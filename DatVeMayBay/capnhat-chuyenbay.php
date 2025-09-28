<?php
// Include file kết nối database
include 'db.php';

// Lấy thời gian hiện tại
$thoiGianHienTai = date('Y-m-d H:i:s');

// Lấy ngày tháng năm hiện tại
$ngayThangNamHienTai = date('Y-m-d');

// Cập nhật TrangThai của bảng matuyen
$sqlUpdateMatuyen = "UPDATE matuyen SET TrangThai = 0 WHERE ThoiGian < '$thoiGianHienTai'";
mysqli_query($connect, $sqlUpdateMatuyen);

// Cập nhật TrangThai của bảng chuyenbaydi
$sqlUpdateChuyenBayDi = "UPDATE chuyenbaydi SET TrangThai = 0 WHERE DATE(ThoiGianDi) < '$ngayThangNamHienTai'";
mysqli_query($connect, $sqlUpdateChuyenBayDi);

// Cập nhật TrangThai của bảng chuyenbayve
$sqlUpdateChuyenBayVe = "UPDATE chuyenbayve SET TrangThai = 0 WHERE DATE(ThoiGianDen) < '$ngayThangNamHienTai'";
mysqli_query($connect, $sqlUpdateChuyenBayVe);

// Đóng kết nối
mysqli_close($connect);

echo "<script>alert('Đã cập nhật trạng thái chuyến bay thành công!!');</script>";
?>
