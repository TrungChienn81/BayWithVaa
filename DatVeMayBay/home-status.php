<?php
include('db.php');
session_start();

// Kiểm tra xem người dùng đã đăng nhập chưa
if (!isset($_SESSION['admin_email'])) {
    // Nếu chưa, chuyển hướng về trang đăng nhập
    header("Location: /BayWithVaa/login.php");
    exit();
} else {
    // Nếu đã đăng nhập, lấy email của người dùng từ session
    $admin_email = $_SESSION['admin_email'];
}

// Kiểm tra xem có tham số id được gửi từ trang chính không
if (isset($_GET['id'])) {
    // Lấy giá trị id từ tham số được gửi
    $id = $_GET['id'];
    
    // Cập nhật trạng thái của task có id tương ứng thành 1 (đang xử lý)
    $update_query = "UPDATE note SET TrangThai = 1 WHERE ID_Note = $id";
    
    // Thực thi truy vấn cập nhật
    mysqli_query($connect, $update_query);

    echo "<script>alert('Update thành công');</script>";
    exit();
} else {
    echo "<script>alert('Update không thành công');</script>";
    exit();
}
?>
