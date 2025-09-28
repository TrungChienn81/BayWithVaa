<?php
session_start();
include('db.php'); // Kết nối đến cơ sở dữ liệu

// Include PHPMailer
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'C:\xampp\htdocs\BayWithVaa\PHPMailer-master\src\Exception.php';
require 'C:\xampp\htdocs\BayWithVaa\PHPMailer-master\src\PHPMailer.php';
require 'C:\xampp\htdocs\BayWithVaa\PHPMailer-master\src\SMTP.php';

// Kiểm tra nếu có dữ liệu trong session và dữ liệu POST được gửi đi từ form
if (!empty($_SESSION) && !empty($_POST)) {
    // Lấy dữ liệu từ form
    $gioiTinh = $_SESSION['gioiTinh'];
    $hoTenKH = $_SESSION['hoTen'];
    $email = $_SESSION['email'];
    $soDienThoai = $_SESSION['soDienThoai'];
    $ngaySinh = $_SESSION['ngaySinh'];
    $diaChi = $_SESSION['diaChi'];
    $CCCD = $_SESSION['CCCD'];
    $ghiChu = $_POST['note'];
    $soVeNguoiLon = intval($_SESSION['soVeNguoiLon']);
    $soVeTreEm = intval($_SESSION['soVeTreEm']);
    $soVeEmBe = intval($_SESSION['soVeEmBe']);
    $tongTien = $_SESSION['tongTien'];
    $dichVu = $_POST['dichVu']; // Lấy dịch vụ từ form
    $phuongThucThanhToan = $_POST['payment']; // Lấy phương thức thanh toán từ form
	$tongSoVe = $_SESSION['tongSoVe'];
	
$maTuyenArray = array(); // Khởi tạo mảng để lưu các mã tuyến
$count = 0; // Biến đếm số lượng mã tuyến

// Hiển thị thông tin về các chuyến bay đã chọn và nút xóa
foreach ($_SESSION['selectedFlights'] as $flight) {
    $maTuyen = $flight['matuyen']; // Lấy mã tuyến
    $id_sanbaydi = $flight['id_sanbaydi']; // Lấy ID của sân bay đi
    $id_sanbayden = $flight['id_sanbayden']; // Lấy ID của sân bay đến
	$thoigian = $flight['thoigian'];
	$thoigiandi = $flight['thoigiandi'];
    $thoigianden = $flight['thoigianden'];
	$hangbay = $flight['hangbay'];
	
    // Tạo một mảng mới để lưu thông tin của mỗi chuyến bay
    $flightInfo = array(
        'maTuyen' => $maTuyen,
        'id_sanbaydi' => $id_sanbaydi,
        'id_sanbayden' => $id_sanbayden
    );
    
    // Nếu có đúng hai mã tuyến, thêm vào mảng
    if ($count < 2) {
        $maTuyenArray[] = $flightInfo;
        $count++;
    } else {
        break; // Nếu đã có đủ hai mã tuyến, thoát khỏi vòng lặp
    }
}
	// Lấy số ghế đã chọn từ session và lưu vào biến mới
    $soGhe = implode(", ", $_SESSION['selected_seats']);
	
    // Xử lý lưu thông tin cá nhân vào bảng thongtincanhan
    $insertPersonalInfoQuery = "INSERT INTO thongtincanhan (GioiTinh, HoTen, NgaySinh, SoDienThoai, Email) 
                                VALUES ('$gioiTinh', '$hoTenKH', '$ngaySinh', '$soDienThoai', '$email')";
    $connect->query($insertPersonalInfoQuery);
    $thongTinCanhanID = $connect->insert_id; // Lấy ID mới được sinh tự động

    // Xử lý lưu thông tin vé vào bảng datve hoặc datvekhuhoi tùy thuộc vào số lượng mã tuyến
	if (count($_SESSION['selectedFlights']) == 1) {
		// Nếu chỉ có 1 mã tuyến
		$insertTicketQuery = "INSERT INTO datve (ID_MaTuyen, ID_ThongTin, DiaChi, CCCD, GhiChu, SoVeNguoiLon, SoVeTreEm, SoVeEmBe) 
							VALUES ('$maTuyen', '$thongTinCanhanID', '$diaChi', '$CCCD', '$ghiChu', '$soVeNguoiLon', '$soVeTreEm', '$soVeEmBe')";
		$connect->query($insertTicketQuery);

		// Lấy ID của vé mới được tạo
		$veID = $connect->insert_id;

		// Thêm dữ liệu vào bảng chitietdatve
		$insertDetailQuery = "INSERT INTO chitietdatve (ID_DatVe, SoGhe, ID_DichVu, TongTien, PhuongThucThanhToan, NgayDat) 
							VALUES ('$veID', '$soGhe', '$dichVu', '$tongTien', '$phuongThucThanhToan', NOW())";
		$connect->query($insertDetailQuery);
		}  elseif (count($_SESSION['selectedFlights']) == 2) {
		// Nếu có 2 mã tuyến trong mảng $maTuyenArray
		if (count($maTuyenArray) == 2) {
			// Khởi tạo một mảng để lưu các mã tuyến
			$maTuyenBothArray = array();

			// Lặp qua các phần tử trong mảng $maTuyenArray để lấy ra mã tuyến
			foreach ($maTuyenArray as $flight) {
				$maTuyenBothArray[] = $flight['maTuyen']; // Lấy mã tuyến
			}

			// Nối các mã tuyến thành một chuỗi, phân tách bằng dấu phẩy
			$maTuyenBoth = implode(', ', $maTuyenBothArray);

			// Thực hiện truy vấn để chèn dữ liệu vào bảng datvekhuhoi
			$insertReturnTicketQuery = "INSERT INTO datvekhuhoi (ID_MaTuyen, ID_ThongTin, DiaChi, CCCD, GhiChu, SoVeNguoiLon, SoVeTreEm, SoVeEmBe) 
										VALUES ('$maTuyenBoth', '$thongTinCanhanID', '$diaChi', '$CCCD', '$ghiChu', '$soVeNguoiLon', '$soVeTreEm', '$soVeEmBe')";
			$connect->query($insertReturnTicketQuery);

			// Lấy ID của vé khu hồi mới được tạo
			$veKhuHoiID = $connect->insert_id;

			// Thêm dữ liệu vào bảng chitietdatvekhuhoi
			$insertReturnDetailQuery = "INSERT INTO chitietdatvekhuhoi (ID_DatVeKhuHoi, SoGhe, ID_DichVu, TongTien, PhuongThucThanhToan, NgayDat) 
										VALUES ('$veKhuHoiID', '$soGhe', '$dichVu', '$tongTien', '$phuongThucThanhToan', NOW())";
			$connect->query($insertReturnDetailQuery);
		} else {
			echo "Không đủ 2 mã tuyến, vui lòng thử lại!";
		}
	}

    // Xử lý lưu thông tin khách hàng chuyến bay vào bảng thongtinkhachhangchuyenbay
    for ($i = 1; $i <= $soVeNguoiLon; $i++) {
        $hoTen = $_POST['hoTenNguoiLon'][$i];
        $ngaySinh = $_POST['ngaySinhNguoiLon'][$i];
        $doTuoi = $_POST['doTuoiNguoiLon'][$i];

        $insertPassengerQuery = "INSERT INTO thongtinkhachhangchuyenbay (ID_ThongTin, DoTuoi, HoTen, NgaySinh) 
                                VALUES ('$thongTinCanhanID', '$doTuoi', '$hoTen', '$ngaySinh')";
        $connect->query($insertPassengerQuery);
    }

    for ($i = 1; $i <= $soVeTreEm; $i++) {
        $hoTen = $_POST['hoTenTreEm'][$i];
        $ngaySinh = $_POST['ngaySinhTreEm'][$i];
        $doTuoi = $_POST['doTuoiTreEm'][$i];

        $insertPassengerQuery = "INSERT INTO thongtinkhachhangchuyenbay (ID_ThongTin, DoTuoi, HoTen, NgaySinh) 
                                VALUES ('$thongTinCanhanID', '$doTuoi', '$hoTen', '$ngaySinh')";
        $connect->query($insertPassengerQuery);
    }

    for ($i = 1; $i <= $soVeEmBe; $i++) {
        $hoTen = $_POST['hoTenEmBe'][$i];
        $ngaySinh = $_POST['ngaySinhEmBe'][$i];
        $doTuoi = $_POST['doTuoiEmBe'][$i];

        $insertPassengerQuery = "INSERT INTO thongtinkhachhangchuyenbay (ID_ThongTin, DoTuoi, HoTen, NgaySinh) 
                                VALUES ('$thongTinCanhanID', '$doTuoi', '$hoTen', '$ngaySinh')";
        $connect->query($insertPassengerQuery);
    }
// Lấy thông tin của mã tuyến 1 từ mảng $maTuyenArray (nếu có)
if (isset($maTuyenArray[0])) {
    $maTuyen1 = $maTuyenArray[0]['maTuyen'];

    // Truy vấn cơ sở dữ liệu để lấy thông tin từ bảng chuyenbayve dựa trên ID_MaTuyen
    $chuyenbayve_query1 = "SELECT ThoiGianDi, ThoiGianDen FROM chuyenbayve WHERE ID_MaTuyen = '$maTuyen1'";
    $chuyenbayve_result1 = $connect->query($chuyenbayve_query1);
    $chuyenbayve_row1 = $chuyenbayve_result1->fetch_assoc();

    // Lấy thông tin ThoiGianDi và ThoiGianDen từ bảng chuyenbayve
    $thoigiandi1 = $chuyenbayve_row1['ThoiGianDi'];
    $thoigianden1 = $chuyenbayve_row1['ThoiGianDen'];

    // Truy vấn cơ sở dữ liệu để lấy thông tin từ bảng matuyen dựa trên ID_MaTuyen
    $matuyen_query1 = "SELECT HangBay, ID_SanBayDi, ID_SanBayDen FROM matuyen WHERE ID_MaTuyen = '$maTuyen1'";
    $matuyen_result1 = $connect->query($matuyen_query1);
    $matuyen_row1 = $matuyen_result1->fetch_assoc();

    // Lấy thông tin ID_SanBayDi, ID_SanBayDen, và HangBay từ bảng matuyen
    $id_sanbaydi1 = $matuyen_row1['ID_SanBayDi'];
    $id_sanbayden1 = $matuyen_row1['ID_SanBayDen'];
    $hangbay1 = $matuyen_row1['HangBay'];
}

// Lấy thông tin của mã tuyến 2 từ mảng $maTuyenArray (nếu có)
if (isset($maTuyenArray[1])) {
    $maTuyen2 = $maTuyenArray[1]['maTuyen'];

    // Truy vấn cơ sở dữ liệu để lấy thông tin từ bảng chuyenbayve dựa trên ID_MaTuyen
    $chuyenbayve_query2 = "SELECT ThoiGianDi, ThoiGianDen FROM chuyenbayve WHERE ID_MaTuyen = '$maTuyen2'";
    $chuyenbayve_result2 = $connect->query($chuyenbayve_query2);
    $chuyenbayve_row2 = $chuyenbayve_result2->fetch_assoc();

    // Lấy thông tin ThoiGianDi và ThoiGianDen từ bảng chuyenbayve
    $thoigiandi2 = $chuyenbayve_row2['ThoiGianDi'];
    $thoigianden2 = $chuyenbayve_row2['ThoiGianDen'];

    // Truy vấn cơ sở dữ liệu để lấy thông tin từ bảng matuyen dựa trên ID_MaTuyen
    $matuyen_query2 = "SELECT HangBay, ID_SanBayDi, ID_SanBayDen FROM matuyen WHERE ID_MaTuyen = '$maTuyen2'";
    $matuyen_result2 = $connect->query($matuyen_query2);
    $matuyen_row2 = $matuyen_result2->fetch_assoc();

    // Lấy thông tin ID_SanBayDi, ID_SanBayDen, và HangBay từ bảng matuyen
    $id_sanbaydi2 = $matuyen_row2['ID_SanBayDi'];
    $id_sanbayden2 = $matuyen_row2['ID_SanBayDen'];
    $hangbay2 = $matuyen_row2['HangBay'];
}


	// Biến lưu nội dung của email
	$emailBody = '';

	// Xử lý nội dung email dựa trên số lượng mã tuyến
	if (count($_SESSION['selectedFlights']) == 1) {
		// Nếu chỉ có 1 mã tuyến
		$emailBody = '<!DOCTYPE html>
			<html lang="en">
			<head>
				<meta charset="UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>Economy Class Boarding Pass</title>
				<style>
				.boarding-pass {
				width: 300px;
				background-color: #fff;
				border-radius: 10px;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
				padding: 20px;
				font-family: Arial, sans-serif;
			}

			.header {
				background-color: #00aaff; /* Màu nền cho header */
				padding: 10px;
				border-radius: 5px;
				text-align: center;
			}

			.header h1 {
				margin: 0;
				font-size: 18px;
				font-weight: bold;
				color: #fff; /* Màu chữ cho header */
			}

			.route {
				display: flex;
				align-items: center;
				justify-content: center;
				margin-top: 10px;
			}

			.from, .to {
				font-size: 24px;
				font-weight: bold;
				color: #333; /* Màu chữ cho địa điểm */
			}

			.arrow {
				margin: 0 10px;
				font-size: 24px;
				color: #333; /* Màu chữ cho mũi tên */
			}

			.location {
				margin-left: 10px;
				font-size: 14px;
				color: #333; /* Màu chữ cho vị trí */
			}

			.plane {
				margin-left: 10px;
				font-size: 18px;
			}

			.details {
				margin-top: 20px;
			}

			.detail {
				display: flex;
				justify-content: space-between;
				margin-bottom: 5px;
			}

			.label {
				font-weight: bold;
			}

			.passenger {
				margin-top: 20px;
			}

			.barcode {
				margin-top: 20px;
				text-align: center;
			}

			.barcode img {
				max-width: 100%;
				height: auto;
			}

			.economy-class {
				background-color: #f9f9f9; /* Màu nền cho vé hạng phổ thông */
			}

				</style>
			</head>
			<body>
				<div class="boarding-pass economy-class">
					<div class="header">
						<h1>🎫 BOARDING PASS</h1>
						<div class="route">
							<span class="from">🛫 ' . $id_sanbaydi . '</span>
							<span class="arrow">→</span>
							<span class="to"> ' . $id_sanbayden . ' 🛬</span>
							<span class="location"> ' . $hangbay . '</span>
							<span class="plane">✈️</span>
						</div>
					</div>
					<div class="details">
						<div class="detail">
							<span class="label">🛩️ Flight Number: </span>
							<span class="value">' . $maTuyen . '</span>
						</div>
						<div class="detail">
							<span class="label">⛩️ Cổng: </span>
							<span class="value">C5</span>
						</div>
						<div class="detail">
							<span class="label">⏱️ Thời gian di chuyển: </span>
							<span class="value"> ' . date('d-m-Y | H:i:s', strtotime($thoigiandi)) . '</span>
						</div>
						<div class="detail">
							<span class="label">⏱️ Thời gian di chuyển: </span>
							<span class="value"> ' . date('d-m-Y | H:i:s', strtotime($thoigianden)) . '</span>
						</div>
					</div>
					<div class="passenger">
						<div class="detail">
							<span class="label">👤 Khách hàng: </span>
							<span class="value"> ' . $hoTenKH . '</span>
						</div>
						<div class="detail">
							<span class="label">💺 Ghế ngồi: </span>
							<span class="value"> ' . $soGhe . '</span>
						</div>
					</div>
					<div class="barcode">
						<!-- Placeholder for barcode image -->
					   <img src="https://www.barcodesinc.com/generator/image.php?code=1234567890&style=197&type=C128B&width=200&height=50&xres=1&font=3" alt="Barcode">
					</div>
					<h6 style="text-align: center;">#' . $veID . '</h6>
				</div>
			</body>
			</html>';
	} elseif (count($_SESSION['selectedFlights']) == 2) {
		// Nếu có 2 mã tuyến
		$emailBody = '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Return Economy Class Boarding Pass</title>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .boarding-pass {
            width: 300px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin-bottom: 20px;
        }

        .header {
            background-color: #00aaff;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            text-align: center;
        }

        .header h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            text-transform: uppercase;
        }

        .route {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
        }

        .from, .to {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .arrow {
            margin: 0 10px;
            font-size: 24px;
            color: #333;
        }

        .location {
            margin-left: 10px;
            font-size: 14px;
            color: #333;
        }

        .details {
            margin-top: 20px;
        }

        .detail {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }

        .label {
            font-weight: bold;
            color: #666;
        }

        .passenger {
            margin-top: 20px;
        }

        .barcode {
            margin-top: 20px;
            text-align: center;
        }

        .barcode img {
            max-width: 100%;
            height: auto;
        }

        .flight-icon {
            font-size: 24px;
        }
    </style>
</head>
<body>
<p>Cảm ơn bạn đã sử dụng dịch vụ của BayWithVaa, chúng tôi xin gửi bạn vé máy bay!</p>
<div class="boarding-pass economy-class">
    <div class="header">
        <h1>Boarding Pass</h1>
        <div class="route">
            <span class="from">🛫 ' . $id_sanbaydi1 . '</span>
            <span class="arrow">→</span>
            <span class="to"> ' . $id_sanbayden1 . ' 🛬</span>
            <span class="location"> ' . $hangbay1 . '</span>
            <span class="flight-icon">✈️</span>
        </div>
    </div>
    <div class="details">
        <div class="detail">
            <span class="label">🛩️ Flight Number:</span>
            <span class="value">' . $maTuyen1 . '</span>
        </div>
        <div class="detail">
            <span class="label">⛩️ Gate:</span>
            <span class="value">C5</span>
        </div>
        <div class="detail">
            <span class="label">⏱️ Thời gian đi:</span>
            <span class="value">' . date('d-m-Y | H:i:s', strtotime($thoigiandi1)) . '</span>
        </div>
        <div class="detail">
            <span class="label">⏱️ Thời gian đến</span>
            <span class="value">' . date('d-m-Y | H:i:s', strtotime($thoigianden1)) . '</span>
        </div>
        <hr>
    </div>
    <div class="passenger">
        <div class="detail">
            <span class="label">👤 Khách hàng:</span>
            <span class="value"> ' . $hoTenKH . '</span>
        </div>
        <div class="detail">
            <span class="label">💺 Ghế:</span>
            <span class="value"> ' . $soGhe . '</span>
        </div>
    </div>
    <div class="barcode">
        <!-- Placeholder for barcode image -->
        <img src="https://www.barcodesinc.com/generator/image.php?code=1234567890&style=197&type=C128B&width=200&height=50&xres=1&font=3" alt="Barcode">
    </div>
	<h6 style="text-align: center;">#' . $veKhuHoiID . '</h6>
</div>
<div class="boarding-pass economy-class">
    <div class="header">
        <h1>Boarding Pass</h1>
        <div class="route">
            <span class="from">🛫 ' . $id_sanbaydi2 . '</span>
            <span class="arrow">→</span>
            <span class="to"> ' . $id_sanbayden2 . ' 🛬</span>
            <span class="location">' . $hangbay2 . '</span>
            <span class="flight-icon">✈️</span>
        </div>
    </div>
    <div class="details">
        <div class="detail">
            <span class="label">🛩️ Flight Number:</span>
            <span class="value"> ' . $maTuyen2 . '</span>
        </div>
        <div class="detail">
            <span class="label">⛩️ Gate:</span>
            <span class="value">D3</span>
        </div>
        <div class="detail">
            <span class="label">⏱️ Thời gian đi:</span>
            <span class="value">' . date('d-m-Y | H:i:s', strtotime($thoigiandi2)) . '</span>
        </div>
        <div class="detail">
            <span class="label">⏱️ Thời gian đến:</span>
            <span class="value">' . date('d-m-Y | H:i:s', strtotime($thoigianden2)) . '</span>
        </div>
        <hr>
    </div>
    <div class="passenger">
        <div class="detail">
            <span class="label">👤 Khách hàng:</span>
            <span class="value">' . $hoTenKH . '</span>
        </div>
        <div class="detail">
            <span class="label">💺 Ghế:</span>
            <span class="value">' . $soGhe . '</span>
        </div>
    </div>
    <div class="barcode">
        <!-- Placeholder for barcode image -->
        <img src="https://www.barcodesinc.com/generator/image.php?code=1234567890&style=197&type=C128B&width=200&height=50&xres=1&font=3" alt="Barcode">
    </div>
	<h6 style="text-align: center;">#' . $veKhuHoiID . '</h6>
</div>
</body>
</html>';
		
	} else {
		echo "Không đủ 2 mã tuyến, vui lòng thử lại!";
	}
	
    // Gửi email thông báo cho khách hàng
    $mail = new PHPMailer(true); // Passing `true` enables exceptions

    try {
        //Server settings
        $mail->SMTPDebug = 0; // Disable debugging for production
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'ekko0903123@gmail.com'; // Thay bằng địa chỉ email của bạn
        $mail->Password = 'ugnz qqzt bddi dwka'; // Thay bằng mật khẩu ứng dụng của bạn
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;

        //Recipients
        $mail->setFrom('ekko0903123@gmail.com', 'BayWithVaa'); // Thay bằng địa chỉ email và tên của bạn
        $mail->addAddress($email, $hoTenKH); // Thêm địa chỉ email và tên của người nhận

        //Content
        $mail->isHTML(true); // Set email format to HTML
        $mail->Subject = 'Flight booking successful';
		$mail->Body = $emailBody;

        $mail->send();    
        $success_msg = "Đặt tour thành công và email xác nhận đã được gửi đến $email, vui lòng kiểm tra mail để xem chi tiết vé!";
    } catch (Exception $e) {
        $error_msg = "Đặt tour thành công nhưng không gửi được email xác nhận!"; // Message in case of failure
    }
	
	// Xóa dữ liệu trong session sau khi đã lưu vào cơ sở dữ liệu thành công
    session_destroy();
} else {
    // Nếu không có dữ liệu trong session hoặc dữ liệu POST không được gửi đi từ form, chuyển hướng người dùng đến trang lỗi
    echo "False";
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Kết quả đặt chuyến bay</title>
</head>
<body>
<?php if (isset($success_msg)) { ?>
    <script>
        alert("<?php echo $success_msg; ?>");
        window.location.href = "home.php"; // Chuyển hướng sau khi nhấn OK
    </script>
<?php } ?>

<?php if (isset($error_msg)) { ?>
    <script>
        alert("<?php echo $error_msg; ?>");
        window.location.href = "home.php"; // Chuyển hướng sau khi nhấn OK
    </script>
<?php } ?>
</body>
</html>
