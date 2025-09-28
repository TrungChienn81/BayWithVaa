<?php
// Kết nối tới cơ sở dữ liệu
include('db.php');

// Lấy dữ liệu từ form
$ma_tuyen = $_POST['ma_tuyen'];
$san_bay_di = $_POST['san_bay_di'];
$san_bay_den = $_POST['san_bay_den'];
$loai_bay_ma_tuyen = $_POST['loai_bay'];
$khoang_cach = $_POST['khoang_cach'];
$thoi_gian = $_POST['thoi_gian'];
$hang_bay = $_POST['hang_bay'];
$trang_thai = $_POST['trang_thai'];

$id_chuyen_bay = $_POST['id_chuyen_bay'];
$so_hieu = $_POST['so_hieu'];
$loai_bay_chuyen_bay = $_POST['loai_bay'];
$thoi_gian_di = $_POST['thoi_gian_di'];
$thoi_gian_den = $_POST['thoi_gian_den'];
$trang_thai = $_POST['trang_thai'];
$so_luong_ve = $_POST['so_luong_ve'];
$gia_ve = $_POST['gia_ve'];
$id_loai_ve = $_POST['id_loai_ve'];


// Insert dữ liệu vào bảng matuyen
$sql_matuyen = "INSERT INTO matuyen (ID_MaTuyen, ID_SanBayDi, ID_SanBayDen, ID_LoaiBay, KhoangCach, ThoiGian, HangBay, TrangThai) VALUES ('$ma_tuyen', '$san_bay_di', '$san_bay_den', '$loai_bay_ma_tuyen', '$khoang_cach', '$thoi_gian', '$hang_bay', '$trang_thai')";
mysqli_query($connect, $sql_matuyen);

// Tùy theo loại bay, insert dữ liệu vào bảng chuyenbaydi hoặc chuyenbayve
if ($loai_bay_chuyen_bay == 1) {
    $sql_chuyen_bay_di = "INSERT INTO chuyenbaydi (ID_ChuyenBayDi, SoHieu, ID_LoaiBay, ThoiGianDi, ThoiGianDen, TrangThai, SoLuongVe, GiaVe, ID_MaTuyen, ID_LoaiVe) VALUES ('$id_chuyen_bay', '$so_hieu', '$loai_bay_chuyen_bay', '$thoi_gian_di', '$thoi_gian_den', '$trang_thai', '$so_luong_ve', '$gia_ve', '$ma_tuyen', '$id_loai_ve')";
    mysqli_query($connect, $sql_chuyen_bay_di);
} elseif ($loai_bay_chuyen_bay == 2) {
    $sql_chuyen_bay_ve = "INSERT INTO chuyenbayve (ID_ChuyenBayVe, SoHieu, ID_LoaiBay, ThoiGianDi, ThoiGianDen, TrangThai, SoLuongVe, GiaVe, ID_MaTuyen, ID_LoaiVe) VALUES ('$id_chuyen_bay', '$so_hieu', '$loai_bay_chuyen_bay', '$thoi_gian_di', '$thoi_gian_den', '$trang_thai', '$so_luong_ve', '$gia_ve', '$ma_tuyen', '$id_loai_ve')";
    mysqli_query($connect, $sql_chuyen_bay_ve);
}

// Đóng kết nối
mysqli_close($connect);

echo "<script>alert('Đã thêm chuyến bay thành công!');</script>";
exit();
?>
