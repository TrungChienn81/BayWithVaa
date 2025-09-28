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
	td:nth-child(2), /* Thông tin đặt vé */
	td:nth-child(3) { /* Thông tin liên lạc */
		width: 25%; /* Điều chỉnh kích thước của cột */
	}

	td:nth-child(4) { /* Thông tin khách hàng */
		width: 20%; /* Điều chỉnh kích thước của cột */
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

<h2>Danh sách đặt vé tour du lịch</h2>
<form action="search_tour.php" method="GET" target="_blank">
    <input type="text" name="searchId" placeholder="Nhập ID Bookings">
    <button type="submit" style="font-size: 1em; border-radius: 5px; background-color: #007bff; color: white; border: none; padding: 5px 10px;">Tìm kiếm</button>
</form>
<table>
    <tr>
        <th>ID Bookings</th>
        <th>Thông tin đặt vé</th>
        <th>Thông tin liên lạc</th>
        <th>Thông tin khách hàng</th>
		<th>Trạng thái</th>
        <th>Action</th>
    </tr>

    <?php
        // Kết nối database
        include 'db.php';
			// Số đơn hiển thị trên mỗi trang
		$per_page = 4;

		// Trang hiện tại
		$page = isset($_GET['page']) ? $_GET['page'] : 1;

		// Tính OFFSET
		$offset = ($page - 1) * $per_page;
        // Truy vấn dữ liệu từ bảng bookings
        $sql = "SELECT bookings.ID_Bookings, bookings.ID_KhachHang, tours.TenTour, tours.NgayDi, bookings.NgayDat, bookings.TongTien, bookings.PhuongThucThanhToan, bookings.TrangThai
        FROM bookings
        INNER JOIN tours ON bookings.ID_Tour = tours.ID_Tour
        ORDER BY bookings.ID_Bookings DESC
        LIMIT $per_page OFFSET $offset";

        $result = $connect->query($sql);

        if ($result->num_rows > 0) {
            // Hiển thị dữ liệu mỗi hàng trong bảng
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row['ID_Bookings'] . "</td>"; // Lấy ID_Bookings từ bảng bookings
                echo "<td>";
                echo "<strong>Tour:</strong> " . $row['TenTour'] . "<br>"; // Hiển thị ID_Tour
				echo "<hr>";
                echo "<strong>Ngày đặt:</strong> " . date('d-m-Y | H:i:s', strtotime($row['NgayDat'])) . "<br>"; // Hiển thị NgayDat
                echo "<strong>Tổng tiền:</strong> " . number_format($row['TongTien']) . " VND<br>"; // Hiển thị TongTien
                echo "<strong>Phương thức thanh toán:</strong> " . $row['PhuongThucThanhToan']; // Hiển thị PhuongThucThanhToan
                echo "</td>";

                echo "<td>";
                // Truy vấn lấy thông tin liên lạc từ bảng khachhang
                $sql_khachhang = "SELECT * FROM khachhang WHERE ID_KhachHang = '" . $row['ID_KhachHang'] . "'";
                $result_khachhang = $connect->query($sql_khachhang);
                if ($result_khachhang->num_rows > 0) {
                    $row_khachhang = $result_khachhang->fetch_assoc();
					echo "<strong>Giới tính:</strong> " . $row_khachhang['GioiTinh'] . "<br>"; // Hiển thị GioiTinh
                    echo "<strong>Tên khách hàng:</strong> " . $row_khachhang['TenKhachHang'] . "<br>"; // Hiển thị TenKhachHang
					echo "<hr>";
                    echo "<strong>Số điện thoại:</strong> " . $row_khachhang['SoDienThoai'] . "<br>"; // Hiển thị SoDienThoai
                    echo "<strong>Email:</strong> " . $row_khachhang['Email'] . "<br>"; // Hiển thị Email
                    echo "<strong>Ngày sinh:</strong> " . date('d-m-Y', strtotime($row_khachhang['NgaySinh'])) . "<br>";// Hiển thị NgaySinh
                    echo "<strong>Địa chỉ:</strong> " . $row_khachhang['DiaChi'] . "<br>"; // Hiển thị DiaChi
					echo "<hr>";
                    echo "<strong>Số vé người lớn:</strong> " . $row_khachhang['SoVeNguoiLon'] . "<br>"; // Hiển thị CCCD
					echo "<strong>Số vé trẻ em:</strong> " . $row_khachhang['SoVeTreEm'] . "<br>";
					echo "<strong>Số vé em bé:</strong> " . $row_khachhang['SoVeEmBe'] . "<br>";
                    echo "<strong>Ghi chú:</strong> " . $row_khachhang['GhiChu'] . "<br>"; // Hiển thị GhiChu
                } else {
                    echo "N/A";
                }
                echo "</td>";

                echo "<td>";
                // Truy vấn lấy thông tin khách hàng từ bảng thongtinkhachhang
                $sql_thongtinkhachhang = "SELECT * FROM thongtinkhachhang WHERE ID_KhachHang = '" . $row['ID_KhachHang'] . "'";
                $result_thongtinkhachhang = $connect->query($sql_thongtinkhachhang);
                if ($result_thongtinkhachhang->num_rows > 0) {
                    while ($row_thongtinkhachhang = $result_thongtinkhachhang->fetch_assoc()) {
						echo "<strong>Họ tên:</strong> " . $row_thongtinkhachhang['HoTen'] . "<br>"; // Hiển thị HoTen
                        echo "<strong>Độ tuổi:</strong> " . $row_thongtinkhachhang['DoTuoi'] . "<br>"; // Hiển thị DoTuoi
                        echo "<strong>Ngày sinh:</strong> " . date('d-m-Y', strtotime($row_thongtinkhachhang['NgaySinh'])) . "<br>";// Hiển thị NgaySinh
                        echo "<hr>"; 
                    }
                } else {
                    echo "N/A"; // Nếu không có dữ liệu, hiển thị "N/A"
                }
                echo "</td>";

				$currentDateTime = date('Y-m-d'); // Thời gian hiện tại
				echo "<td>";
				if ($row['TrangThai'] == 1) {
					// Nếu vé đã bị hủy, hiển thị thông báo "Đã hủy vé" với màu đỏ
					echo "<span style='color: red; font-weight: bold;'>Đã hủy vé</span>";
				} elseif ($row['NgayDi'] <= $currentDateTime) {
					// Kiểm tra nếu ngày đi nhỏ hơn hoặc bằng thời gian hiện tại
					echo "<span style='color: green; font-weight: bold;'>Đã hoàn thành tour</span>";
				} else {
					echo "<span style='color: purple; font-weight: bold;'>Tour chưa bắt đầu</span>";
				}
				echo "</td>";
				
				echo "<td>";
				if ($row['TrangThai'] == NULL) {
					$sql_datve = "SELECT * FROM bookings WHERE ID_Bookings = '" . $row['ID_Bookings'] . "'";
					$result_datve = $connect->query($sql_datve);
					if ($result_datve->num_rows > 0) {
						$row_datve = $result_datve->fetch_assoc();
						// Hiển thị nút "Cập nhật trạng thái"
						echo "<a href='update_status_tour.php?id={$row_datve['ID_Bookings']}' class='btn-status check' target='_blank'><i class='fa fa-check'></i></a>";
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
	$query_total = "SELECT COUNT(*) AS total FROM bookings";
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
        echo "<a href='javascript:void(0);' onclick='fetchTravel($previous_page)'>Previous</a>";
    } else {
        echo "<a class='disabled'>Previous</a>";
    }

    // Hiển thị nút Next
    if ($page < $total_pages) {
        $next_page = $page + 1;
        echo "<a href='javascript:void(0);' onclick='fetchTravel($next_page)'>Next</a>";
    } else {
        echo "<a class='disabled'>Next</a>";
    }
    ?>
</div>

</body>
</html>
