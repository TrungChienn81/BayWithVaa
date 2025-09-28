<?php
// Kết nối đến cơ sở dữ liệu
include('db.php');

// Kiểm tra xem biến GET 'id' đã được truyền và có giá trị không
if(isset($_GET['id'])) {
    $id = $_GET['id'];

    // Truy vấn để cập nhật trạng thái
    $sql_update = "UPDATE bookings SET TrangThai = 1 WHERE ID_Bookings = $id";

    if ($connect->query($sql_update) === TRUE) {
        echo "<script>alert('Cập nhật đơn hàng thành công!');</script>";
        exit();
    } else {
        // Nếu có lỗi trong quá trình cập nhật, hiển thị thông báo lỗi
        echo "<script>alert('Có lỗi khi cập nhật, vui lòng thử lại!');</script>" . $connect->error;
    }
} else {
    // Nếu không có biến GET 'id', hiển thị thông báo lỗi
    echo "Không tìm thấy ID.";
}

// Đóng kết nối đến cơ sở dữ liệu
$connect->close();
?>
