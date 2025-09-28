<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<title>Thông tin tìm kiếm</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.tour-table {
    width: 100%;
    border-collapse: collapse;
	
}

.tour-table th,
.tour-table td {
    padding: 10px;
    text-align: left;
}

.tour-table th {
    background-color: #f2f2f2;
    font-weight: bold;
}

.tour-table tbody tr:nth-child(even) {
    background-color: #f2f2f2;
	
}

.tour-table tbody tr:hover {
    background-color: #ddd;
}

	
</style>
</head>

<body>
	<h2 style="text-align: center;">Thông tin tour du lịch</h2>
<?php
// Kết nối database
include 'db.php';

// Kiểm tra xem đã gửi dữ liệu từ biểu mẫu tìm kiếm chưa
if(isset($_GET['searchId'])) {
    // Lấy từ khóa tìm kiếm từ trường input
    $searchId = $_GET['searchId'];

    // Truy vấn dữ liệu từ bảng tours dựa trên từ khóa tìm kiếm
    $sql_search = "SELECT tours.*, huongdanvien.TenHuongDanVien
                   FROM tours
                   JOIN huongdanvien ON tours.ID_HuongDanVien = huongdanvien.ID_HuongDanVien
                   WHERE tours.ID_Tour LIKE '%$searchId%' OR tours.TenTour LIKE '%$searchId%' OR huongdanvien.TenHuongDanVien LIKE '%$searchId%'
                   ORDER BY tours.ID_Tour DESC";

    // Thực thi truy vấn
    $result_search = $connect->query($sql_search);

    // Hiển thị kết quả
    if ($result_search->num_rows > 0) {
        echo "<table border='1' class='tour-table'>";
        echo "<thead>";
        echo "<tr>";
        echo "<th>ID</th>";
        echo "<th>Hình ảnh</th>";
        echo "<th>Tour du lịch</th>";
        echo "<th>Thông tin thêm</th>";
        echo "<th>Action</th>";
        echo "</tr>";
        echo "</thead>";
        echo "<tbody>";
        while ($row = $result_search->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['ID_Tour'] . "</td>"; // Lấy ID_Tour từ bảng tours
            echo "<td><img src='/BayWithVaa/img/" . $row['HinhAnh'] . "' style='width: 200px; height: auto;'></td>";
            echo "<td>";
            echo "<strong>Tên Tour du lịch:</strong> " . $row['TenTour'] . "<br>";
            echo "<strong>Ngày Đi:</strong> " . date('d-m-Y', strtotime($row['NgayDi'])) . "</span><br>";
            echo "<strong>Ngày Về:</strong> " . date('d-m-Y', strtotime($row['NgayVe'])) . "</span><br>";
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
        echo "</tbody>";
        echo "</table>";
    } else {
        echo "Không tìm thấy kết quả phù hợp.";
    }
}
?>

</body>
</html>