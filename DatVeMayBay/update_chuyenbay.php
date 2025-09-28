<?php
include 'db.php';

$id_chuyenbay = isset($_GET['id']) ? $_GET['id'] : '';

// Kiểm tra xem phương thức gửi form là POST hay không
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy thông tin từ form
    $id_ma_tuyen = $_POST['id_ma_tuyen'];
    $san_bay_di = $_POST['san_bay_di'];
    $san_bay_den = $_POST['san_bay_den'];
    $loai_bay = $_POST['loai_bay'];
    $khoang_cach = $_POST['khoang_cach'];
    $thoi_gian = $_POST['thoi_gian'];
    $hang_bay = $_POST['hang_bay'];
    $so_hieu = $_POST['so_hieu'];
    $thoi_gian_di = $_POST['thoi_gian_di'];
    $thoi_gian_den = $_POST['thoi_gian_den'];
    $trang_thai = $_POST['trang_thai'];
    $so_luong_ve = $_POST['so_luong_ve'];
    $gia_ve = $_POST['gia_ve'];
    $id_loai_ve = $_POST['id_loai_ve'];

    // Cập nhật thông tin vào bảng matuyen
    $sql_matuyen = "UPDATE matuyen SET ID_SanBayDi = '$san_bay_di', ID_SanBayDen = '$san_bay_den', ID_LoaiBay = '$loai_bay', KhoangCach = '$khoang_cach', ThoiGian = '$thoi_gian', HangBay = '$hang_bay' WHERE ID_MaTuyen = '$id_ma_tuyen'";
    $result_matuyen = $connect->query($sql_matuyen);

		// Kiểm tra loại chuyến bay và cập nhật thông tin vào bảng tương ứng
		$loai_chuyen_bay = $_POST['loai_bay'];
		if ($loai_chuyen_bay == 1) {
			$sql_chuyenbaydi = "UPDATE chuyenbaydi SET SoHieu = '$so_hieu', ID_LoaiBay = '$loai_bay', ThoiGianDi = '$thoi_gian_di', ThoiGianDen = '$thoi_gian_den', TrangThai = '$trang_thai', SoLuongVe = '$so_luong_ve', GiaVe = '$gia_ve', ID_LoaiVe = '$id_loai_ve' WHERE ID_MaTuyen = '$id_ma_tuyen'";
			$result_chuyenbaydi = $connect->query($sql_chuyenbaydi);
		} else if ($loai_chuyen_bay == 2) {
			$sql_chuyenbayve = "UPDATE chuyenbayve SET SoHieu = '$so_hieu', ID_LoaiBay = '$loai_bay', ThoiGianDi = '$thoi_gian_di', ThoiGianDen = '$thoi_gian_den', TrangThai = '$trang_thai', SoLuongVe = '$so_luong_ve', GiaVe = '$gia_ve', ID_LoaiVe = '$id_loai_ve' WHERE ID_MaTuyen = '$id_ma_tuyen'";
			$result_chuyenbayve = $connect->query($sql_chuyenbayve);
		}

		// Kiểm tra kết quả cập nhật và hiển thị thông báo tương ứng
		if ($result_matuyen && ($loai_chuyen_bay == 1 && $result_chuyenbaydi || $loai_chuyen_bay == 2 && $result_chuyenbayve)) {
			echo "<script>alert('Update thành công chuyến bay!');</script>";
		} else {
			echo "<script>alert('Update không thành công, vui lòng thử lại!');</script>" . $connect->error;
		}

    // Đóng kết nối CSDL
    $connect->close();
}
?>
