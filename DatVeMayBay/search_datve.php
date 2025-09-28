<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<title>Thông tin tìm kiếm</title>
<style>
        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
            color: #333;
        }

        tr:hover {
            background-color: #e6e6e6;
        }

        td strong {
            font-weight: bold;
            color: #555;
        }

        td {
            line-height: 1.5;
            color: #666;
        }

        .action-btn {
            cursor: pointer;
            color: #555;
        }

        .success {
            color: green;
        }

        .danger {
            color: red;
        }
.form-container {
    width: 50%;
    margin: auto;
}

.input-group {
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    margin-bottom: 5px;
}

.input-group input[type="text"],
.input-group input[type="number"] {
    width: calc(100% - 10px);
    padding: 8px;
    border-radius: 3px;
    border: 1px solid #ccc;
}

.input-group input[type="submit"] {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    background-color: #4CAF50;
    color: white;
}

.input-group input[type="submit"]:hover {
    background-color: #45a049;
}
/* CSS cho nút tích */
.btn-status.check i {
	font-size: 20px; 
	color: green; 
	border: 1px solid green; 
	padding: 8px 12px; 
	border-radius: 50%; 
	display: inline-block;
}
.btn-status.check i:hover{
	background-color: greenyellow;
}
/* CSS cho nút X */
.btn-status.cross i {
	font-size: 20px; 
	color: red;
	border: 1px solid red;
	padding: 8px 12px; 
	border-radius: 50%; 
	display: inline-block; 
}
</style>
</head>
<body>
	<h2 style="text-align: center;">Thông tin vé</h2>
<?php
// Kết nối đến cơ sở dữ liệu
include 'db.php';

// Kiểm tra xem ID Đặt vé có được truyền từ request GET hay không
if (isset($_GET['searchId'])) {
    // Lấy ID Đặt vé từ request GET và thực hiện làm sạch dữ liệu
    $searchId = $_GET['searchId'];

    // Truy vấn dữ liệu từ bảng datvekhuhoi dựa trên ID Đặt vé
    $sql = "SELECT * FROM datvekhuhoi WHERE ID_DatVeKhuHoi = '$searchId'";
    $result = $connect->query($sql);

    // Kiểm tra xem có kết quả trả về hay không
    if ($result->num_rows > 0) {
        // Bắt đầu HTML cho kết quả tìm kiếm
        echo "<table>
                <tr>
                    <th>ID</th>
                    <th>Thông tin đặt vé</th>
                    <th>Thông tin liên lạc</th>
                    <th>Thông tin khách hàng</th>
                    <th>Chi tiết đặt vé</th>
					<th>Trạng thái</th>
                    <th>Action</th>
                </tr>";

        // Hiển thị dữ liệu từ các hàng kết quả
        while ($row = $result->fetch_assoc()) {
            // Xây dựng HTML cho từng hàng kết quả
            echo "<tr>";
            echo "<td>" . $row['ID_DatVeKhuHoi'] . "</td>";
            echo "<td>";
            // Thêm thông tin đặt vé vào HTML
            echo "<strong>Mã tuyến đi:</strong> " . $row['ID_MaTuyen'] . "<br>";
			echo "<hr>";
            echo "<strong>Địa chỉ:</strong> " . $row['DiaChi'] . "<br>";
            echo "<strong>CCCD:</strong> " . $row['CCCD'] . "<br>";
			echo "<hr>";
            echo "<strong>Số vé người lớn:</strong> " . $row['SoVeNguoiLon'] . "<br>";
            echo "<strong>Số vé trẻ em:</strong> " . $row['SoVeTreEm'] . "<br>";
            echo "<strong>Số vé em bé:</strong> " . $row['SoVeEmBe'] . "<br>";
            echo "<strong>Ghi Chú:</strong> " . $row['GhiChu'];
            echo "</td>";
            echo "<td>";
            // Thêm thông tin liên lạc vào HTML
            // Truy vấn lấy thông tin cá nhân từ bảng thongtincanhan
            $sql_thongtin = "SELECT * FROM thongtincanhan WHERE ID_ThongTin = '" . $row['ID_ThongTin'] . "'";
            $result_thongtin = $connect->query($sql_thongtin);
            if ($result_thongtin->num_rows > 0) {
                $row_thongtin = $result_thongtin->fetch_assoc();
			     echo "<strong>Giới tính:</strong> " . $row_thongtin['GioiTinh'] . "<br>";
                echo "<strong>Họ tên:</strong> " . $row_thongtin['HoTen'] . "<br>";
                echo "<strong>Ngày sinh:</strong> " . date('d-m-Y', strtotime($row_thongtin['NgaySinh'])) . "<br>";
                echo "<strong>Số điện thoại:</strong> " . $row_thongtin['SoDienThoai'] . "<br>";
                echo "<strong>Email:</strong> " . $row_thongtin['Email'];
            } else {
                echo "N/A";
            }
            echo "</td>";
            echo "<td>";
            // Thêm thông tin khách hàng vào HTML
            // Truy vấn lấy thông tin khách hàng từ bảng thongtinkhachhangchuyenbay
            $sql_khachhang = "SELECT * FROM thongtinkhachhangchuyenbay WHERE ID_ThongTin = '" . $row['ID_ThongTin'] . "'";
            $result_khachhang = $connect->query($sql_khachhang);
            if ($result_khachhang->num_rows > 0) {
                while ($row_khachhang = $result_khachhang->fetch_assoc()) {
                    echo "<strong>Họ tên:</strong> " . $row_khachhang['HoTen'] . "<br>";
                    echo "<strong>Độ tuổi:</strong> " . $row_khachhang['DoTuoi'] . "<br>";
                   echo "<strong>Ngày sinh:</strong> " . date('d-m-Y', strtotime($row_khachhang['NgaySinh'])) . "<br>";

                    echo "<br>";
					echo "<hr>";
                }
            } else {
                echo "N/A";
            }
            echo "</td>";
            echo "<td>";
            // Thêm chi tiết đặt vé vào HTML
            // Truy vấn lấy chi tiết đặt vé từ bảng chitietdatvekhuhoi
           $sql_chitiet = "SELECT chitietdatvekhuhoi.*, COALESCE(dichvu.TenDichVu, '0') AS TenDichVu 
                FROM chitietdatvekhuhoi 
                LEFT JOIN dichvu ON chitietdatvekhuhoi.ID_DichVu = dichvu.ID_DichVu
                WHERE chitietdatvekhuhoi.ID_DatVeKhuHoi = '" . $row['ID_DatVeKhuHoi'] . "'";
            $result_chitiet = $connect->query($sql_chitiet);
            if ($result_chitiet->num_rows > 0) {
                while ($row_chitiet = $result_chitiet->fetch_assoc()) {
					echo "<strong>Số ghế:</strong> " . $row_chitiet['SoGhe'] . "<br>";
                    echo "<strong>Dịch vụ:</strong> " . $row_chitiet['TenDichVu'] . "<br>";
                    echo "<strong>Tổng tiền:</strong> " . number_format($row_chitiet['TongTien']) . " VND<br>";
                    echo "<strong>Phương thức thanh toán:</strong> " . $row_chitiet['PhuongThucThanhToan'] . "<br>";
					echo "<strong>Ngày đặt</strong> " . date('d-m-Y | H:i:s', strtotime($row_chitiet['NgayDat'])) . "<br>"; 
                }
            } else {
                echo "N/A";
            }
            echo "</td>";
			echo "<td>";
			$maTuyenStr = $row['ID_MaTuyen'];
			$maTuyenArr = explode(',', $maTuyenStr);
			if (isset($maTuyenArr[0])) {
				$maTuyen = $maTuyenArr[0];
				$sql_thoiGian = "SELECT ThoiGian FROM matuyen WHERE ID_MaTuyen = '$maTuyen'";
				$result_thoiGian = $connect->query($sql_thoiGian);
				if ($result_thoiGian) {
					$row_thoiGian = $result_thoiGian->fetch_assoc();
					if ($row_thoiGian) {
						$thoiGian = strtotime($row_thoiGian['ThoiGian']);
						$ngayHienTai = strtotime(date('Y-m-d')); // Lấy thời gian hiện tại với định dạng ngày
						if ($row['TrangThai'] == 1) {
							echo "<span style='color: red; font-weight: bold;'>Đã hủy vé</span>";
						} else {
							if ($thoiGian > $ngayHienTai) {
								echo "<span style='color: green; font-weight: bold;'>Đã hoàn thành</span>";
							} else {
								echo "<span style='color: orange; font-weight: bold;'>Chưa hoàn thành chuyến bay</span>";
							}
						}
					} else {
						echo "Không có gì";
					}
				} else {
					echo "Lỗi truy vấn";
				}
			} else {
				echo "Không có gì";
			}
			echo "</td>";


			echo "<td>";
			if ($row['TrangThai'] == NULL) {
				// Truy vấn để lấy giá trị TrangThai từ bảng datve dựa trên ID_DatVe
				$sql_datvekhuhoi = "SELECT * FROM chitietdatvekhuhoi WHERE ID_DatVeKhuHoi = '" . $row['ID_DatVeKhuHoi'] . "'";
				$result_datvekhuhoi = $connect->query($sql_datvekhuhoi);
				if ($result_datvekhuhoi->num_rows > 0) {
					$row_datve = $result_datvekhuhoi->fetch_assoc();
					// Hiển thị nút "Cập nhật trạng thái"
					echo "<a href='update_status_flight_round.php?id={$row_datve['ID_DatVeKhuHoi']}' class='btn-status check' target='_blank'><i class='fa fa-check'></i></a>";
				}
			} elseif ($row['TrangThai'] == 1) {
				// Hiển thị dấu X màu đỏ khi TrangThai bằng 1
				echo "<span class='btn-status cross'><i class='fas fa-times'></i></span>";
			}
			echo "</td>";
            echo "</tr>";
        }

        // Kết thúc HTML cho kết quả tìm kiếm
        echo "</table>";
    } else {
        // Nếu không tìm thấy kết quả
        echo "Không tìm thấy dữ liệu.";
    }
} else {
    // Nếu không có ID Đặt vé được truyền từ request GET
    echo "Vui lòng cung cấp ID Đặt vé.";
}

// Đóng kết nối database
$connect->close();
?>

</body>
</html>
