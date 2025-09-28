<?php
// Kết nối database
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
    // Lấy ID tour cần xóa từ URL
    $id = $_GET['id'];

    // Xóa tour từ cơ sở dữ liệu
    $query = "DELETE FROM tours WHERE ID_Tour = $id";

    if ($connect->query($query) === TRUE) {
        // Chuyển hướng về trang quản lý tour
		echo "<script>alert('Xóa tour du lịch thành công!');</script>";
        exit();
    } else {
        echo "<script>alert('Lỗi khi xóa tour, vui lòng thử lại!');</script>" . $connect->error;
    }
} else {
    echo "Yêu cầu không hợp lệ.";
}

// Đóng kết nối
$connect->close();
?>
