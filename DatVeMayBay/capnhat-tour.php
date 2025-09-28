<?php
// Kết nối database
include 'db.php';

// Lấy thời gian hiện tại
$thoiGianHienTai = date("Y-m-d");

// Truy vấn để cập nhật trạng thái cho các tour có ngày đi vượt quá thời gian hiện tại
$sqlUpdate = "UPDATE tours SET TrangThai = 0 WHERE NgayDi < '$thoiGianHienTai'";
$resultUpdate = $connect->query($sqlUpdate);

// Kiểm tra kết quả cập nhật
if ($resultUpdate) {
    echo "<script>alert('Đã cập nhật trạng thái tour du lịch thành công!!');</script>";
} else {
    echo "<script>alert('Lỗi, vui lòng thử lại sau!!');</script>";
}

// Đóng kết nối
$connect->close();
?>
