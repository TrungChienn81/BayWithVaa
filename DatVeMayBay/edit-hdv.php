<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa Hướng dẫn viên</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }
        input[type="text"],
        input[type="tel"],
        input[type="email"],
        input[type="date"] {
            width: calc(100% - 20px);
            padding: 12px 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="tel"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus {
            border-color: #4CAF50;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .avatar {
            text-align: center;
        }
        .avatar img {
            max-width: 100px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <h2>Chỉnh sửa Hướng dẫn viên</h2>
    <?php
    // Kết nối đến cơ sở dữ liệu
    require_once 'db.php';

    // Kiểm tra nếu tồn tại ID_HuongDanVien
    if(isset($_GET['id'])) {
        $id = $_GET['id'];
        // Truy vấn dữ liệu từ bảng huongdanvien dựa trên ID_HuongDanVien
        $sql = "SELECT * FROM huongdanvien WHERE ID_HuongDanVien = '$id'";
        $result = $connect->query($sql);

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            // Hiển thị biểu mẫu chỉnh sửa với dữ liệu hiện tại của hướng dẫn viên
            ?>
            <div class="avatar">
                <img src="/BayWithVaa/image/<?php echo $row['HinhAnh']; ?>" alt="Avatar">
            </div>
            <form action="submit_edit_hdv.php" method="post" enctype="multipart/form-data" target="_blank">
                <input type="hidden" name="id" value="<?php echo $row['ID_HuongDanVien']; ?>">
                <label for="ten_huongdanvien">Tên hướng dẫn viên:</label>
                <input type="text" id="ten_huongdanvien" name="ten_huongdanvien" value="<?php echo $row['TenHuongDanVien']; ?>" required>
				
                <label for="sodienthoai">Số điện thoại:</label>
                <input type="text" id="sodienthoai" name="sodienthoai" pattern="[0-9]{10}" value="<?php echo $row['SoDienThoai']; ?>" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<?php echo $row['Email']; ?>" required>

                <label for="noi_sinh">Nơi sinh:</label>
                <input type="text" id="noi_sinh" name="noi_sinh" value="<?php echo $row['NoiSinh']; ?>">

                <label for="dia_chi">Địa chỉ:</label>
                <input type="text" id="dia_chi" name="dia_chi" value="<?php echo $row['DiaChi']; ?>">

                <label for="ngay_sinh">Ngày sinh:</label>
                <input type="date" id="ngay_sinh" name="ngay_sinh" value="<?php echo $row['NgaySinh']; ?>">

                <label for="cccd">Căn cước công dân hoặc chứng minh nhân dân:</label>
                <input type="text" id="cccd" name="cccd" value="<?php echo $row['CCCD']; ?>">
				
				<label for="hinh_anh">Hình ảnh:</label>
                <input type="file" id="hinh_anh" name="hinh_anh" value="<?php echo $row['HinhAnh']; ?>">
				
                <input type="submit" value="Submit" style="margin-top: 10px;">
            </form>
            <?php

        } else {
            echo "<p>Không tìm thấy hướng dẫn viên có ID là $id</p>";
        }
    } else {
        echo "<p>Thiếu ID_HuongDanVien trong yêu cầu.</p>";
    }
    $connect->close();
    ?>
</body>
</html>
