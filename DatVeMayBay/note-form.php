<?php
include ('db.php');
?>
<?php
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
?>
<!DOCTYPE html>
<html>
<head>
    <title>Add Note Form</title>
    <link rel="stylesheet" href="stylehome1.css">
    <style>
#tieuDe {
  width: 100%;
  max-width: 600px; /* Đặt giới hạn chiều rộng tối đa */
  padding: 15px 25px; /* Tăng khoảng cách giữa nội dung và viền */
  margin: 10px 0; /* Tăng khoảng cách với các phần tử khác */
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 6px; /* Tăng bán kính bo góc */
  font-size: 18px; /* Tăng kích thước phông chữ */
}

#tieuDe:focus {
  border: 2px solid #555;
}
    </style>
</head>
<body>
    <h2>Add Note Form</h2>
    <form action="add-note.php" method="post">
		<div class="user-options">
			<label>Giao cho:</label><br>
			<?php
			// Truy vấn để lấy danh sách người dùng
			$query = "SELECT ID_User, Email FROM user WHERE VaiTro = 1";
			$result = mysqli_query($connect, $query);
			// Duyệt qua danh sách người dùng và tạo các radio button
			while ($row = mysqli_fetch_assoc($result)) {
				echo "<input type='radio' id='user" . $row['ID_User'] . "' name='userId' value='" . $row['ID_User'] . "'>";
				echo "<label for='user" . $row['ID_User'] . "'>" . $row['Email'] . "</label>";
			}
			?>
		</div>
        <div>
            <input type="hidden" name="ngayGiao" id="ngayGiao">
        </div>
		<div>
            <label for="tieuDe">Tiêu đề:</label>
             <input type="text" name="tieuDe" id="tieuDe" required>
        </div>
        <div>
            <label for="moTa">Mô Tả:</label>
            <textarea name="moTa" id="moTa" rows="4" cols="50" required></textarea>
        </div>
        <div class="priority-options">
            <label>Độ ưu tiên:</label><br>
            <input type="radio" id="lowPriority" name="mucDo" value="Low">
            <label for="lowPriority">Low</label>
            <input type="radio" id="mediumPriority" name="mucDo" value="Medium">
            <label for="mediumPriority">Medium</label>
            <input type="radio" id="highPriority" name="mucDo" value="High">
            <label for="highPriority">High</label>
        </div>
        <button type="submit" style="background-color: blueviolet;">Submit</button>
    </form>
</body>
</html>


