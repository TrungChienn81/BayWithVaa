<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin Hướng dẫn viên</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 20px auto;
            padding: 30px;
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
        input[type="date"],
        input[type="file"] {
            width: calc(100% - 24px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="tel"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        input[type="file"]:focus {
            border-color: #4CAF50;
        }
        input[type="submit"] {
            background-color: purple;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: mediumpurple;
        }
        input[type="file"] {
            padding-top: 12px;
            padding-bottom: 12px;
        }
        label[for="hinh_anh"] {
            margin-top: 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h2>Thông tin Hướng dẫn viên</h2>
    <form action="submit_huongdanvien.php" method="post" enctype="multipart/form-data" target="_blank">
		<label for="hinh_anh">Hình Ảnh:</label>
        <input type="file" id="hinh_anh" name="hinh_anh">
		
        <label for="ten_huongdanvien">Tên hướng dẫn viên:</label>
        <input type="text" id="ten_huongdanvien" name="ten_huongdanvien" required>

        <label for="sodienthoai">Số điện thoại:</label>
        <input type="text" id="sodienthoai" name="sodienthoai" pattern="[0-9]{10}" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="noi_sinh">Nơi sinh:</label>
        <input type="text" id="noi_sinh" name="noi_sinh">

        <label for="dia_chi">Địa chỉ:</label>
        <input type="text" id="dia_chi" name="dia_chi">

        <label for="ngay_sinh">Ngày sinh:</label>
        <input type="date" id="ngay_sinh" name="ngay_sinh">

        <label for="cccd">Căn cước công dân hoặc chứng minh nhân dân:</label>
        <input type="text" id="cccd" name="cccd">

        <input type="submit" value="Submit">
    </form>
</body>
</html>
