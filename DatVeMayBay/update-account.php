<?php
include('db.php');

session_start();

// Kiểm tra xem người dùng đã đăng nhập chưa
if(!isset($_SESSION['admin_email'])) {
    // Nếu chưa, chuyển hướng về trang đăng nhập
    header("Location: /BayWithVaa/login.php");
    exit();
} else {
    // Nếu đã đăng nhập, lấy email của người dùng từ session
    $admin_email = $_SESSION['admin_email'];
}

// Truy vấn để lấy thông tin của người dùng
$query = "SELECT * FROM user WHERE Email = '$admin_email'";
$result = mysqli_query($connect, $query);
$row_user_info = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Cập nhật tài khoản</title>
	<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 20px;
}

#user-info-container {
  max-width: 600px;
  margin: 0 auto;
  background-color: #f2f2f2;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
  text-align: center;
  color: #333;
}

.user-info {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.user-info label {
  width: 150px;
  font-weight: bold;
}

.user-info input[type="text"],
.user-info input[type="password"] {
  flex: 1;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

#form-user input[type="submit"] {
  display: block;
  margin: 20px auto 0;
  padding: 10px 20px;
  background-color: orangered;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

#form-user input[type="submit"]:hover {
  background-color: orange;
}
	</style>
</head>
<body>
    <div id="user-info-container">
		<h2>Update thông tin</h2>
        <!-- Form để cập nhật thông tin -->
        <form action="account.php" method="post" id="form-user">
            <input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
            <div class="user-info">
                <label for="new_fullname">Nhập họ tên:</label>
                <input type="text" id="new_fullname" name="new_fullname" value="<?php echo $row_user_info['HoTen']; ?>">
            </div>
			 <div class="user-info">
                <label for="new_password">Nhập mật khẩu:</label>
                <input type="text" id="password" name="new_password" value="<?php echo $row_user_info['MatKhau']; ?>">
            </div>
            <div class="user-info">
                <label for="new_phone">Nhập số điện thoại</label>
                <input type="text" id="new_phone" name="new_phone" value="<?php echo $row_user_info['SoDienThoai']; ?>">
            </div>
            <div class="user-info">
                <label for="new_address">Nhập địa chỉ:</label>
                <input type="text" id="new_address" name="new_address" value="<?php echo $row_user_info['DiaChi']; ?>">
            </div>
            <div class="user-info">
                <label for="new_dob">Nhập ngày sinh:</label>
                <input type="date" id="new_dob" name="new_dob" value="<?php echo $row_user_info['NgaySinh']; ?>">
            </div>
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>