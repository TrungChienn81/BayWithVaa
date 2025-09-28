<?php
include ('db.php');
session_start();

// Kiểm tra xem người dùng đã đăng nhập chưa
if(!isset($_SESSION['admin_email'])) {
    // Nếu chưa, chuyển hướng về trang đăng nhập
    header("Location: /BayWithVaa/login.php");
    exit();
} else {
    // Nếu đã đăng nhập, lấy email của người dùng từ session
    $user_email = $_SESSION['admin_email'];
}

if($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy dữ liệu từ form
    $userId = $_POST['userId'];
	$tieuDe = $_POST['tieuDe']; // Thêm dòng này để lấy tiêu đề từ form
    $moTa = $_POST['moTa'];
    $mucDo = $_POST['mucDo'];
    $trangThai = 0; // Trạng thái mặc định
    
    // Insert dữ liệu vào bảng note
    $sql = "INSERT INTO note (ID_User, UserGiao, TieuDe, NgayGiao, MoTa, MucDo, TrangThai) 
            VALUES ('$userId', '$user_email', '$tieuDe', NOW(), '$moTa', '$mucDo', '$trangThai')";

    if(mysqli_query($connect, $sql)) {
        echo "<script>alert('Giao thành công!');</script>";
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($connect);
    }
}

mysqli_close($connect);
?>
