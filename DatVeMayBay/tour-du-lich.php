<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="style8.css">
    <title>Quản lý Tour</title>
    <style>
table.tour-table {
    width: 100%;
}

table.tour-table th,
table.tour-table td {
    padding: 10px;
    text-align: left;
}

table.tour-table th:first-child,
table.tour-table td:first-child {
    width: 5%;
}

table.tour-table th:nth-child(2),
table.tour-table td:nth-child(2) {
    width: 20%;
}

table.tour-table th:nth-child(3),
table.tour-table td:nth-child(3) {
    width: 35%;
}

table.tour-table th:nth-child(4),
table.tour-table td:nth-child(4) {
    width: 30%;
}

table.tour-table th:nth-child(5),
table.tour-table td:nth-child(5) {
    width: 10%;
}

@media screen and (max-width: 768px) {
    table.tour-table th,
    table.tour-table td {
        font-size: 14px;
    }
}
.pagination {
    margin-top: 20px;
    text-align: center;
}

.pagination a {
    display: inline-block;
    padding: 8px 16px;
    text-decoration: none;
    color: black;
    background-color: #0713E0; 
    border-radius: 4px; 
    margin: 0 4px;
    transition: background-color 0.3s; 
}

.pagination a.active {
    background-color: #4CAF50;
    color: white;
}

.pagination a.disabled {
    pointer-events: none;
    color: #999; 
    background-color: #ddd; 
}

.pagination a:hover:not(.active):not(.disabled) {
    background-color: #2E86C1; 
}	
    </style>
</head>

<body>
    <h1>Quản lý Tour</h1>
<form action="search_travel.php" method="GET" target="_blank">
	<input type="text" name="searchId" placeholder="Nhập ID hoặc từ khóa">
	<button type="submit" style="font-size: 1em; border-radius: 5px; background-color: #007bff; color: white; border: none; padding: 5px 10px;">Tìm kiếm</button>
</form>
    <table border="1" class="tour-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Hình ảnh</th>
                <th>Tour du lịch</th>
                <th>Thông tin thêm</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Kết nối database
            include 'db.php';
            // Số tour hiển thị trên mỗi trang
            $per_page = 4;

            // Trang hiện tại
            $page = isset($_GET['page']) ? $_GET['page'] : 1;

            // Tính OFFSET
            $offset = ($page - 1) * $per_page;

            // Câu truy vấn SQL lấy dữ liệu từ bảng tours với phân trang
            $query = "SELECT tours.*, huongdanvien.TenHuongDanVien
			  FROM tours
			  JOIN huongdanvien ON tours.ID_HuongDanVien = huongdanvien.ID_HuongDanVien
			  WHERE tours.TrangThai = 1
			  ORDER BY tours.ID_Tour DESC
			  LIMIT $per_page OFFSET $offset";
            $result = $connect->query($query);

            // Hiển thị dữ liệu trong bảng	
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row['ID_Tour'] . "</td>";
                echo "<td><img src='/BayWithVaa/img/" . $row['HinhAnh'] . "' style='width: 200px; height: auto; border-radius: 10px;'></td>";
                echo "<td>";
				echo "<strong>Tên Tour du lịch:</strong> " . $row['TenTour'] . "<br>";
                echo "<strong>Ngày Đi:</strong> <span class='strong-text'>" . date('d-m-Y', strtotime($row['NgayDi'])) . "</span><br>";
				echo "<strong>Ngày Về:</strong> <span class='strong-text'>" . date('d-m-Y', strtotime($row['NgayVe'])) . "</span><br>";
                echo "<strong>Địa Điểm Xuất Phát:</strong> " . $row['DiaDiemXuatPhat'] . "<br>";
                echo "<strong>Địa Điểm Tới:</strong> " . $row['DiaDiemToi'] . "<br>";
                echo "<strong>Hướng Dẫn Viên:</strong> " . $row['TenHuongDanVien'] . "<br>";
                echo "</td>";
                echo "<td>";
                echo "<strong>Giờ Tập Trung:</strong> " . $row['GioTapTrung'] . "<br>";
                echo "<strong>Nơi Tập Trung:</strong> " . $row['NoiTapTrung'] . "<br>";
                echo "<strong>Phương Tiện Di Chuyển:</strong> " . $row['PhuongTienDiChuyen'] . "<br>";
                echo "<strong>Địa Điểm Tham Quan:</strong> " . $row['DiaDiemThamQuan'] . "<br>";
				echo "<strong style='margin-top: 5px;'>Ẩm thực:</strong> " . $row['AmThuc'] . "<br>";
                echo "<strong>Khách Sạn:</strong> " . $row['KhachSan'] . "<br>";
                echo "<strong>Số Vé:</strong> " . $row['SoVe'] . "<br>";
                echo "<strong>Giá:</strong> " . number_format($row['Gia']) . " VND<br>";
                echo "</td>";
                echo "<td>";
				echo "<a href='add-images.php?id=" . $row['ID_Tour'] . "' target='_blank' style='font-size: 25px; margin-right: 20px;'><i class='fas fa-images'></i></a>"; // Image icon
                echo "<a href='/BayWithVaa/destinationDetails.php?id=" . $row['ID_Tour'] . "' target='_blank' style='font-size: 25px; margin-right: 20px; margin-left: 20px;'><i class='fas fa-eye'></i></a>"; // Eye icon
                echo "<a href='edit-tour-form.php?id=" . $row['ID_Tour'] . "' target='_blank' style='font-size: 25px; margin-right: 20px; margin-left: 20px;'><i class='fas fa-pencil-alt'></i></a>"; // Edit icon
                echo "<a href='delete-tour.php?id=" . $row['ID_Tour'] . "' target='_blank' style='font-size: 25px; margin-left: 20px;'><i class='fas fa-trash-alt'></i></a>"; // Delete icon
                echo "</td>";
                echo "</tr>";
            }
            
            // Tính tổng số trang
            $query_total = "SELECT COUNT(*) AS total FROM tours";
            $result_total = mysqli_query($connect, $query_total);
            $total_rows = mysqli_fetch_assoc($result_total)['total'];
            $total_pages = ceil($total_rows / $per_page);
            ?>
        </tbody>
    </table>

<div class="pagination">
    <?php
    // Hiển thị số trang hiện tại
    echo "<span>Page $page of $total_pages</span>";

    // Hiển thị nút Previous
    if ($page > 1) {
        $previous_page = $page - 1;
        echo "<a href='javascript:void(0);' onclick='fetchTourData($previous_page)'>Previous</a>";
    } else {
        echo "<a class='disabled'>Previous</a>";
    }

    // Hiển thị nút Next
    if ($page < $total_pages) {
        $next_page = $page + 1;
        echo "<a href='javascript:void(0);' onclick='fetchTourData($next_page)'>Next</a>";
    } else {
        echo "<a class='disabled'>Next</a>";
    }
    ?>
</div>

</body>

</html>
