<?php
// Kết nối đến cơ sở dữ liệu
require_once 'db.php';

// Kiểm tra xem ID_HuongDanVien đã được gửi từ phía client chưa
if(isset($_GET['id'])) {
    $id = $_GET['id'];

    // Cập nhật dữ liệu của cột ID_HuongDanVien trong bảng tours thành NULL
    $sql_update_tours = "UPDATE tours SET ID_HuongDanVien = NULL WHERE ID_HuongDanVien='$id'";
    if ($connect->query($sql_update_tours) === TRUE) {
        // Tiếp tục cập nhật cột TrangThai trong bảng huongdanvien thành 0
        $sql_update_hdv = "UPDATE huongdanvien SET TrangThai = 0 WHERE ID_HuongDanVien='$id'";
        if ($connect->query($sql_update_hdv) === TRUE) {
            echo "<script>alert('Xóa hướng dẫn viên thành công!');</script>";
        } else {
            echo "<script>alert('Lỗi xóa hướng dẫn viên trong bảng huongdanvien!');</script>" . $connect->error;
        }
    } else {
        echo "<script>alert('Lỗi khi xóa hướng dẫn viên trong bảng tours, vui lòng thử lại!');</script>" . $connect->error;
    }
} else {
    echo "<script>alert('Thiếu ID hướng dẫn viên!');</script>";
}

// Đóng kết nối
$connect->close();
?>
