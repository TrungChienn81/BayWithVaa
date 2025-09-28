<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Bảng Thông tin Đặt vé</title>
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
.pagination {
    margin-top: 20px;
    text-align: center;
}

.pagination a {
    color: #fff;
    background-color: #007bff; /* Màu xanh dương */
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color 0.3s;
    border: 1px solid #007bff;
    border-radius: 4px;
    margin: 0 5px;
}

.pagination a:hover {
    background-color: #0056b3; /* Màu xanh dương nhạt khi di chuột vào */
}

.pagination .disabled {
    pointer-events: none;
    color: #aaa;
    cursor: default;
    background-color: #ddd;
    border: 1px solid #ddd;
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

<h2>Danh sách đặt vé một chiều</h2>
<form action="search_datve1.php" method="GET" target="_blank">
    <input type="text" name="searchId" placeholder="Nhập ID vé">
    <button type="submit" style="font-size: 1em; border-radius: 5px; background-color: #007bff; color: white; border: none; padding: 5px 10px;">Tìm kiếm</button>
</form>
<table>
    <tr>
        <th>ID vé</th>
        <th>Thông tin đặt vé</th>
        <th>Thông tin liên lạc</th>
        <th>Thông tin khách hàng</th>
        <th>Chi tiết đặt vé</th>
		<th>Trạng thái</th>
        <th>Action</th>
    </tr>

    <?php
	include ('db.php');
	
	// Số đơn hiển thị trên mỗi trang
	$per_page = 4;

	// Trang hiện tại
	$page = isset($_GET['page']) ? $_GET['page'] : 1;

	// Tính OFFSET
	$offset = ($page - 1) * $per_page;
	
    // Truy vấn dữ liệu từ bảng datve
    $sql = "SELECT datve.*, matuyen.ThoiGian 
        FROM datve 
        INNER JOIN matuyen ON datve.ID_MaTuyen = matuyen.ID_MaTuyen 
        ORDER BY datve.ID_DatVe DESC LIMIT $per_page OFFSET $offset";
    $result = $connect->query($sql);

    if ($result->num_rows > 0) {
        // Hiển thị dữ liệu mỗi hàng trong bảng
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['ID_DatVe'] . "</td>"; // Di chuyển cột ID_DatVe lên đầu
            echo "<td>";
            echo "<strong>Mã tuyến đi:</strong> " . $row['ID_MaTuyen'] . "<br>"; // Hiển thị ID_MaTuyen
			echo "<hr>";
            echo "<strong>Địa chỉ:</strong> " . $row['DiaChi'] . "<br>"; // Hiển thị DiaChi
            echo "<strong>CCCD:</strong> " . $row['CCCD'] . "<br>"; // Hiển thị CCCD
			echo "<hr>";
            echo "<strong>Số vé người lớn:</strong> " . $row['SoVeNguoiLon'] . "<br>"; // Hiển thị SoVeNguoiLon
            echo "<strong>Số vé trẻ em:</strong> " . $row['SoVeTreEm'] . "<br>"; // Hiển thị SoVeTreEm
            echo "<strong>Số vé em bé:</strong> " . $row['SoVeEmBe'] . "<br>"; // Hiển thị SoVeEmBe
            echo "<strong>Ghi Chú:</strong> " . $row['GhiChu']; // Hiển thị GhiChu
            echo "</td>";

            echo "<td>";
            // Truy vấn lấy thông tin cá nhân từ bảng thongtincanhan
            $sql_thongtin = "SELECT * FROM thongtincanhan WHERE ID_ThongTin = '" . $row['ID_ThongTin'] . "'";
            $result_thongtin = $connect->query($sql_thongtin);
            if ($result_thongtin->num_rows > 0) {
                $row_thongtin = $result_thongtin->fetch_assoc();
			    echo "<strong>Giới tính:</strong> " . $row_thongtin['GioiTinh'] . "<br>"; // Hiển thị GioiTinh
                echo "<strong>Họ tên:</strong> " . $row_thongtin['HoTen'] . "<br>"; // Hiển thị HoTen
                echo "<strong>Ngày sinh:</strong> " . date('d-m-Y', strtotime($row_thongtin['NgaySinh'])) . "<br>"; // Hiển thị NgaySinh
                echo "<strong>Số điện thoại:</strong> " . $row_thongtin['SoDienThoai'] . "<br>"; // Hiển thị SoDienThoai
                echo "<strong>Email:</strong> " . $row_thongtin['Email']; // Hiển thị Email
            } else {
                echo "N/A";
            }
            echo "</td>";

            echo "<td>";
            // Truy vấn lấy thông tin khách hàng từ bảng thongtinkhachhangchuyenbay
            $sql_khachhang = "SELECT * FROM thongtinkhachhangchuyenbay WHERE ID_ThongTin = '" . $row['ID_ThongTin'] . "'";
            $result_khachhang = $connect->query($sql_khachhang);
            if ($result_khachhang->num_rows > 0) {
                while ($row_khachhang = $result_khachhang->fetch_assoc()) {
                    echo "<strong>Họ tên:</strong> " . $row_khachhang['HoTen'] . "<br>"; // Hiển thị HoTen
                    echo "<strong>Độ tuổi:</strong> " . $row_khachhang['DoTuoi'] . "<br>"; // Hiển thị DoTuoi
                    echo "<strong>Ngày sinh:</strong> " . date('d-m-Y', strtotime($row_khachhang['NgaySinh'])) . "<br>"; // Hiển thị NgaySinh
                    echo "<hr>";
                }
            } else {
                echo "N/A"; // Nếu không có dữ liệu, hiển thị "N/A"
            }
            echo "</td>";

            echo "<td>";
            // Truy vấn lấy chi tiết đặt vé từ bảng chitietdatve
            $sql_chitiet = "SELECT chitietdatve.*, COALESCE(dichvu.TenDichVu, '0') AS TenDichVu 
                FROM chitietdatve 
                LEFT JOIN dichvu ON chitietdatve.ID_DichVu = dichvu.ID_DichVu
                WHERE chitietdatve.ID_DatVe = '" . $row['ID_DatVe'] . "'";

			$result_chitiet = $connect->query($sql_chitiet);
			if ($result_chitiet->num_rows > 0) {
				while ($row_chitiet = $result_chitiet->fetch_assoc()) {
					echo "<strong>Số ghế:</strong> " . $row_chitiet['SoGhe'] . "<br>";
					echo "<strong>Dịch vụ:</strong> " . $row_chitiet['TenDichVu'] . "<br>"; // Hiển thị Tên Dịch Vụ hoặc '0'
					echo "<strong>Tổng tiền:</strong> " . number_format($row_chitiet['TongTien']) . " VND<br>";
					echo "<strong>Phương thức thanh toán:</strong> " . $row_chitiet['PhuongThucThanhToan'] . "<br>";
					echo "<strong>Ngày đặt:</strong> " . date('d-m-Y | H:i:s', strtotime($row_chitiet['NgayDat'])) . "<br>";
					echo "<br>";
				}
			} else {
                echo "N/A"; // Nếu không có dữ liệu, hiển thị "N/A"
            }
            echo "</td>";

			echo "<td>";
			$thoiGianHienTai = date('Y-m-d H:i:s');
			$thoiGianMatuyen = $row['ThoiGian'];

			// Kiểm tra và hiển thị trạng thái từ cột TrangThai trong bảng datve
			if ($row['TrangThai'] == 1) {
				echo "<span style='color: red; font-weight: bold;'>Đã hủy vé</span>";
			} else {
				// Nếu chưa hủy vé, tiếp tục kiểm tra trạng thái của chuyến bay
				if ($thoiGianMatuyen > $thoiGianHienTai) {
					echo "<span style='color: blue; font-weight: bold;'>Chưa cất cánh</span>";
				} elseif (substr($thoiGianMatuyen, 0, 10) == date('Y-m-d')) {
					echo "<span style='color: orange; font-weight: bold;'>Đang bay</span>";
				} else {
					echo "<span style='color: green; font-weight: bold;'>Đã hoàn tất</span>";
				}
			}
			echo "</td>";

			echo "<td>";
			if ($row['TrangThai'] == NULL) {
				// Truy vấn để lấy giá trị TrangThai từ bảng datve dựa trên ID_DatVe
				$sql_datve = "SELECT * FROM chitietdatve WHERE ID_DatVe = '" . $row['ID_DatVe'] . "'";
				$result_datve = $connect->query($sql_datve);
				if ($result_datve->num_rows > 0) {
					$row_datve = $result_datve->fetch_assoc();
					// Hiển thị nút "Cập nhật trạng thái"
					echo "<a href='update_status_flight.php?id={$row_datve['ID_DatVe']}' class='btn-status check' target='_blank'><i class='fa fa-check'></i></a>";
				}
			} elseif ($row['TrangThai'] == 1) {
				// Hiển thị dấu X màu đỏ khi TrangThai bằng 1
				echo "<span class='btn-status cross'><i class='fas fa-times'></i></span>";
			}
			echo "</td>";

            echo "</tr>";
        }
    } else {
        echo "Không có dữ liệu.";
    }
	
	// Tính tổng số trang
	$query_total = "SELECT COUNT(*) AS total FROM datve";
	$result_total = $connect->query($query_total);
	$total_rows = $result_total->fetch_assoc()['total'];
	$total_pages = ceil($total_rows / $per_page);
	
    $connect->close();
    ?>
</table>
<div class="pagination">
    <?php
    // Hiển thị số trang hiện tại
    echo "<span>Page $page of $total_pages</span>";

    // Hiển thị nút Previous
    if ($page > 1) {
        $previous_page = $page - 1;
        echo "<a href='javascript:void(0);' onclick='fetchOneTrip($previous_page)'>Previous</a>";
    } else {
        echo "<a class='disabled'>Previous</a>";
    }

    // Hiển thị nút Next
    if ($page < $total_pages) {
        $next_page = $page + 1;
        echo "<a href='javascript:void(0);' onclick='fetchOneTrip($next_page)'>Next</a>";
    } else {
        echo "<a class='disabled'>Next</a>";
    }
    ?>
</div>
</body>
</html>
