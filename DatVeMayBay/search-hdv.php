<?php
// Kết nối đến cơ sở dữ liệu
require_once 'db.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kết quả tìm kiếm hướng dẫn viên</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .action-buttons a {
            margin-right: 5px;
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .action-buttons a:hover {
            color: #0056b3;
        }

        .fa-pencil-alt {
            font-size: 20px;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Kết quả tìm kiếm hướng dẫn viên</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Hình Ảnh</th>
                <th>Tên</th>
                <th>Số Điện Thoại</th>
                <th>Email</th>
                <th>Nơi Sinh</th>
                <th>Địa Chỉ</th>
                <th>Ngày Sinh</th>
                <th>Căn Cước Công Dân</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if(isset($_GET['keyword'])) {
                $keyword = mysqli_real_escape_string($connect, $_GET['keyword']);

                // Truy vấn dữ liệu từ bảng huongdanvien dựa trên từ khóa
                $sql = "SELECT * FROM huongdanvien WHERE TrangThai IS NULL AND (ID_HuongDanVien = '$keyword' OR TenHuongDanVien LIKE '%$keyword%')";
                $result = $connect->query($sql);

                if ($result->num_rows > 0) {
                    // Hiển thị kết quả tìm kiếm
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row["ID_HuongDanVien"] . "</td>";
                        echo "<td><img src='/BayWithVaa/img/" . $row["HinhAnh"] . "' alt='Hình ảnh' style='max-width: 100px; max-height: 100px;'></td>";
                        echo "<td>" . $row["TenHuongDanVien"] . "</td>";
                        echo "<td>" . $row["SoDienThoai"] . "</td>";
                        echo "<td>" . $row["Email"] . "</td>";
                        echo "<td>" . $row["NoiSinh"] . "</td>";
                        echo "<td>" . $row["DiaChi"] . "</td>";
                        echo "<td>" . $row["NgaySinh"] . "</td>";
                        echo "<td>" . $row["CCCD"] . "</td>";
                        echo "<td><a href='edit-hdv.php?id=" . $row["ID_HuongDanVien"] . "' target='_blank'><i class='fas fa-pencil-alt'></i></a></td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='10'>Không tìm thấy kết quả phù hợp.</td></tr>";
                }
            } else {
                // Nếu không có từ khóa tìm kiếm được gửi
                echo "<tr><td colspan='10'>Vui lòng nhập từ khóa tìm kiếm.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</body>
</html>

<?php
// Đóng kết nối
$connect->close();
?>
