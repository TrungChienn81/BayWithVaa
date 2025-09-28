<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách Hướng dẫn viên</title>
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

        .fa-pencil-alt,
        .fa-trash-alt {
            font-size: 30px;
        }
        .search-form {
            margin-bottom: 20px;
        }
        .search-form input[type="text"] {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 300px;
        }
        .search-form button {
            padding: 8px 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .search-form button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Danh sách Hướng dẫn viên</h2>
    <div class="search-form">
        <form action="search-hdv.php" method="GET" target="_blank">
            <input type="text" name="keyword" placeholder="Nhập ID hoặc tên để tìm kiếm">
            <button type="submit">Tìm kiếm</button>
        </form>
    </div>
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
            // Kết nối đến cơ sở dữ liệu
            require_once 'db.php';

            // Truy vấn dữ liệu từ bảng huongdanvien
            $sql = "SELECT * FROM huongdanvien WHERE TrangThai IS NULL";
            $result = $connect->query($sql);

            if ($result->num_rows > 0) {
                // Duyệt qua từng hàng dữ liệu và hiển thị ra bảng
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["ID_HuongDanVien"] . "</td>";
                    echo "<td><img src='/BayWithVaa/image/" . $row["HinhAnh"] . "' alt='Hình ảnh' style='max-width: 100px; max-height: 100px;'></td>";
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
                echo "<tr><td colspan='10'>Không có dữ liệu.</td></tr>";
            }
            $connect->close();
            ?>
        </tbody>
    </table>
</body>
</html>
