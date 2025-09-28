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

// Xử lý dữ liệu gửi từ form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy thông tin từ form
    $new_fullname = $_POST['new_fullname'];
    $new_password = $_POST['new_password'];
    $new_phone = $_POST['new_phone'];
    $new_address = $_POST['new_address'];
    $new_dob = $_POST['new_dob'];

    // Update thông tin người dùng trong cơ sở dữ liệu
    $query = "UPDATE user SET HoTen = '$new_fullname', MatKhau = '$new_password', SoDienThoai = '$new_phone', DiaChi = '$new_address', NgaySinh = '$new_dob' WHERE Email = '$admin_email'";

    if (mysqli_query($connect, $query)) {
        // Nếu update thành công, chuyển hướng về trang thông tin cá nhân
        echo "<script>alert('Cập nhật thành công!');</script>";
        exit();
    } else {
        echo "<script>alert('Lỗi cập nhật, vui lòng thử lại sau!');</script>" . mysqli_error($connect);
    }
}
?>
