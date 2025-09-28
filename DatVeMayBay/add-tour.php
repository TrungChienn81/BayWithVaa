<?php
// Kết nối database
include 'db.php';

// Kiểm tra xem form đã được gửi chưa
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Lấy dữ liệu từ form
    $tenTour = $_POST['TenTour'];
    $noiDung = $_POST['NoiDung'];
    $moTa = $_POST['MoTa'];
    $ngayDi = $_POST['NgayDi'];
    $ngayVe = $_POST['NgayVe'];
    $gioTapTrung = $_POST['GioTapTrung'];
    $diaDiemXuatPhat = $_POST['DiaDiemXuatPhat'];
    $diaDiemToi = $_POST['DiaDiemToi'];
    $noiTapTrung = $_POST['NoiTapTrung'];
    $phuongTienDiChuyen = $_POST['PhuongTienDiChuyen'];
    $khachSan = $_POST['KhachSan'];
    $diaDiemThamQuan = $_POST['DiaDiemThamQuan'];
	$amThuc = $_POST['AmThuc'];
    $idHuongDanVien = $_POST['ID_HuongDanVien'];
    $soVe = $_POST['SoVe'];
    $gia = $_POST['Gia'];
    $giaTreEm = $_POST['TreEm'];
    $giaEmBe = $_POST['EmBe'];
	$TrangThai = $_POST['TrangThai'];
	
    // Lấy tên tệp ảnh và đường dẫn tạm thời
    $duongdananh = $_FILES['duongdananh']['name'];
    $duongdananh_tmp = $_FILES['duongdananh']['tmp_name'];

    // Di chuyển tệp ảnh vào thư mục đích
    $targetDir = 'C:/xampp/htdocs/BayWithVaa/img/';
    if (move_uploaded_file($duongdananh_tmp, $targetDir . $duongdananh)) {
        // Thực hiện truy vấn để chèn dữ liệu vào cơ sở dữ liệu
        $query = "INSERT INTO tours (HinhAnh, TenTour, MoTa, NoiDung, NgayDi, NgayVe, GioTapTrung, DiaDiemXuatPhat, DiaDiemToi, 
                  NoiTapTrung, PhuongTienDiChuyen, KhachSan, DiaDiemThamQuan, AmThuc, ID_HuongDanVien, SoVe, Gia, GiaTreEm, GiaEmBe, TrangThai) 
                  VALUES ('$duongdananh', '$tenTour', '$moTa', '$noiDung', '$ngayDi', '$ngayVe', '$gioTapTrung', 
                  '$diaDiemXuatPhat', '$diaDiemToi', '$noiTapTrung', '$phuongTienDiChuyen', '$khachSan', '$diaDiemThamQuan', '$amThuc',
                  '$idHuongDanVien', '$soVe', '$gia', '$giaTreEm', '$giaEmBe', '$TrangThai')";

        if ($connect->query($query) === TRUE) {
            echo "<script>alert('Thêm tour du lịch thành công!');</script>";
        } else {
            echo "Lỗi: " . $query . "<br>" . $connect->error;
        }
    } else {
        echo "Có lỗi xảy ra khi tải lên tệp.";
    }

    // Đóng kết nối
    $connect->close();
}
?>
