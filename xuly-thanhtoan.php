<?php
// Bắt đầu session
session_start();

// Include file kết nối database
include 'db.php';

// Include PHPMailer
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'C:\xampp\htdocs\BayWithVaa\PHPMailer-master\src\Exception.php';
require 'C:\xampp\htdocs\BayWithVaa\PHPMailer-master\src\PHPMailer.php';
require 'C:\xampp\htdocs\BayWithVaa\PHPMailer-master\src\SMTP.php';

// Lấy thông tin từ form
$gioiTinh = $_POST['gioiTinh'];
$hoTen = $_POST['hoTen'];
$email = $_POST['email'];
$soDienThoai = $_POST['soDienThoai'];
$ngaySinh = $_POST['ngaySinh'];
$diaChi = $_POST['diaChi'];
$CCCD = $_POST['CCCD'];
$soVeNguoiLon = $_POST['soVeNguoiLon'];
$soVeTreEm = $_POST['soVeTreEm'];
$soVeEmBe = $_POST['soVeEmBe'];
$tongTien = $_POST['tongTien'];
$tour_id = $_POST['tour_id'];
$phuongThucThanhToan = $_POST['phuongThucThanhToan'];
$ghiChu = $_POST['ghiChu'];

// Thêm thông tin khách hàng vào bảng khachhang
$sql_insert_customer = "INSERT INTO khachhang (TenKhachHang, SoDienThoai, Email, NgaySinh, GioiTinh, DiaChi, CCCD, GhiChu, SoVeNguoiLon, SoVeTreEm, SoVeEmBe)
VALUES ('$hoTen', '$soDienThoai', '$email', '$ngaySinh', '$gioiTinh', '$diaChi', '$CCCD', '$ghiChu', '$soVeNguoiLon', '$soVeTreEm', '$soVeEmBe')";

$result_insert_customer = $connect->query($sql_insert_customer);

// Lấy ID của khách hàng vừa thêm vào
$id_khachhang = $connect->insert_id;

// Thêm thông tin hành khách vào bảng thongtinkhachhang
for ($i = 1; $i <= $soVeNguoiLon; $i++) {
    $doTuoiNguoiLon = $_POST['doTuoiNguoiLon' . $i];
    $hoTenNguoiLon = $_POST['hoTenNguoiLon' . $i];
    $ngaySinhNguoiLon = $_POST['ngaySinhNguoiLon' . $i];

    $sql_insert_hanh_khach = "INSERT INTO thongtinkhachhang (ID_KhachHang, DoTuoi, HoTen, NgaySinh)
    VALUES ('$id_khachhang', '$doTuoiNguoiLon', '$hoTenNguoiLon', '$ngaySinhNguoiLon')";

    $result_insert_hanh_khach = $connect->query($sql_insert_hanh_khach);
}

for ($i = 1; $i <= $soVeTreEm; $i++) {
    $doTuoiTreEm = $_POST['doTuoiTreEm' . $i];
    $hoTenTreEm = $_POST['hoTenTreEm' . $i];
    $ngaySinhTreEm = $_POST['ngaySinhTreEm' . $i];

    $sql_insert_hanh_khach = "INSERT INTO thongtinkhachhang (ID_KhachHang, DoTuoi, HoTen, NgaySinh)
    VALUES ('$id_khachhang', '$doTuoiTreEm', '$hoTenTreEm', '$ngaySinhTreEm')";

    $result_insert_hanh_khach = $connect->query($sql_insert_hanh_khach);
}

for ($i = 1; $i <= $soVeEmBe; $i++) {
    $doTuoiEmBe = $_POST['doTuoiEmBe' . $i];
    $hoTenEmBe = $_POST['hoTenEmBe' . $i];
    $ngaySinhEmBe = $_POST['ngaySinhEmBe' . $i];

    $sql_insert_hanh_khach = "INSERT INTO thongtinkhachhang (ID_KhachHang, DoTuoi, HoTen, NgaySinh)
    VALUES ('$id_khachhang', '$doTuoiEmBe', '$hoTenEmBe', '$ngaySinhEmBe')";

    $result_insert_hanh_khach = $connect->query($sql_insert_hanh_khach);
}

// Thêm thông tin đặt tour vào bảng bookings
$sql_insert_booking = "INSERT INTO bookings (ID_KhachHang, ID_Tour, NgayDat, TongTien, PhuongThucThanhToan)
VALUES ('$id_khachhang', '$tour_id', NOW(), '$tongTien', '$phuongThucThanhToan')";

$result_insert_booking = $connect->query($sql_insert_booking);
$id_bookings = $connect->insert_id;

// Kiểm tra và thông báo kết quả
if ($result_insert_customer && $result_insert_booking) {
    // Truy vấn để lấy thông tin tour từ bảng tours dựa vào tour_id
    $sql_get_tour_info = "SELECT TenTour, NgayDi, GioTapTrung, NoiTapTrung, DiaDiemToi FROM tours WHERE ID_Tour = '$tour_id'";
    $result_tour_info = $connect->query($sql_get_tour_info);
    
    if ($result_tour_info->num_rows > 0) {
        // Lấy thông tin tour từ kết quả truy vấn
        $row_tour_info = $result_tour_info->fetch_assoc();
        $tenTour = $row_tour_info['TenTour'];
        $ngayDi = $row_tour_info['NgayDi'];
        $gioTapTrung = $row_tour_info['GioTapTrung'];
        $noiTapTrung = $row_tour_info['NoiTapTrung'];
        $diaDiemToi = $row_tour_info['DiaDiemToi'];
        
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
            $mail->addAddress($email, $hoTen); // Thêm địa chỉ email và tên của người nhận

            //Content
            $mail->isHTML(true); // Set email format to HTML
            $mail->Subject = 'Successfully booked the tour';
            $mail->Body = '<!DOCTYPE html>
				<html lang="en">
				<head>
				<meta charset="UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>Vé Tour Du Lịch</title>
				<style>
				body {
				  font-family: Arial, sans-serif;
				  margin: 0;
				  padding: 0;
				  background-color: #f4f4f4;
				}

				.ticket {
				  background-color: #fff;
				  max-width: 400px;
				  margin: 50px auto;
				  border-radius: 10px;
				  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
				}

				.ticket-header {
				  background-color: #007bff;
				  color: #fff;
				  padding: 20px;
				  text-align: center;
				  border-top-left-radius: 10px;
				  border-top-right-radius: 10px;
				}

				.ticket-header h2 {
				  margin: 0;
				}

				.ticket-content {
				  padding: 20px;
				}

				.ticket-info p,
				.ticket-details p {
				  margin: 0;
				  padding: 5px 0;
				}

				.ticket-info strong,
				.ticket-details strong {
				  font-weight: bold;
				}

				.ticket-details {
				  border-top: 1px solid #eee;
				  margin-top: 10px;
				  padding-top: 10px;
				}
				</style>
				</head>
				<body>
				<h4 style="text-align: center;">Cảm ơn vì đã sử dụng dịch vụ của BayWithVaa, chúng tôi xin gửi bạn vé tour du lịch, chúc bạn có một chuyến đi vui vẻ!</h4>
				<div class="ticket">
				  <div class="ticket-header">
					<h2>🔖 VÉ TOUR DU LỊCH</h2>
					  <p><strong>🌴 Tour du lịch:</strong> ' . $tenTour . '</p>
					  <h4>id ticket: ' . $id_bookings . '</h4>
				  </div>
				  <div class="ticket-content">
					<div class="ticket-info">
					  <p><strong>👤 Tên:</strong> ' . $hoTen . '</p>
					  <p><strong>📞 Điện thoại:</strong> ' . $soDienThoai . '</p>
					  <p><strong>📍 Địa chỉ:</strong> ' . $diaChi . '</p>
					</div>
					<div class="ticket-details">
					  <p><strong>⛩️ Địa điểm:</strong> ' . $diaDiemToi . '</p>
					  <p><strong>📅 Ngày khởi hành:</strong> ' . date('d-m-Y', strtotime($ngayDi)) . '</p>
					  <p><strong>⏰ Giờ tập trung:</strong> ' . $gioTapTrung . '</p>
					  <p><strong>📍 Nơi tập trung:</strong> ' . $noiTapTrung . '</p>
					  <hr>
						<img src="https://www.barcodesinc.com/generator/image.php?code=1234567890&style=197&type=C128B&width=200&height=50&xres=1&font=3" alt="Barcode" style="margin-left: 50px;">
						<h4 style="text-align: center;">Cảm ơn vì đã sử dụng dịch vụ của chúng tôi!!!</h4>
						<p style="font-size: 10px; text-align: center;">Vui lòng có mặt đúng giờ để có được một chuyến đi vui vẻ nhất!</p>
					</div>
				  </div>
				</div>

				</body>
				</html>	';
     
            $mail->send();    
            $success_msg = "Đặt tour thành công và email xác nhận đã được gửi đến $email, vui lòng kiểm tra mail của bạn để xem vé!";
        } 
		catch (Exception $e) {
            $success_msg = "Đặt tour thành công nhưng không gửi được email xác nhận!"; // Thông báo nếu không gửi được email
        }
    } else {
        $error_msg = "Không tìm thấy thông tin tour!"; // Thông báo nếu không tìm thấy thông tin tour trong cơ sở dữ liệu
    }
} else {
    $error_msg = "Đặt tour thất bại!"; // Thông báo nếu quá trình đặt tour không thành công
}

// Đóng kết nối
$connect->close();

?>

<!DOCTYPE html>
<html>
<head>
    <title>Kết quả đặt tour</title>
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

    <script>
        setTimeout(function() {
            window.location.href = "home.php";
        }, 5000);
    </script>
</body>
</html>
