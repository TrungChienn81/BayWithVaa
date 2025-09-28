<?php
// Kết nối database
include 'db.php';

// Kiểm tra xem form đã được gửi chưa
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Lấy dữ liệu từ form
    $idTour = $_POST['ID_Tour'];
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
    $GiaTreEm = $_POST['GiaTreEm'];
    $GiaEmBe = $_POST['GiaEmBe'];

    // Kiểm tra xem có tệp ảnh được tải lên không
    if (isset($_FILES['duongdananh'])) {
        // Lấy tên tệp ảnh và đường dẫn tạm thời
        $duongdananh = $_FILES['duongdananh']['name'];
        $duongdananh_tmp = $_FILES['duongdananh']['tmp_name'];

        // Di chuyển tệp ảnh vào thư mục đích
        $targetDir = 'C:/xampp/htdocs/BayWithVaa/img/';
        if (move_uploaded_file($duongdananh_tmp, $targetDir . $duongdananh)) {
            // Thực hiện truy vấn để cập nhật dữ liệu vào cơ sở dữ liệu
            $query = "UPDATE tours SET HinhAnh='$duongdananh', TenTour='$tenTour', MoTa='$moTa', NoiDung='$noiDung' ,NgayDi='$ngayDi', NgayVe='$ngayVe', 
                  GioTapTrung='$gioTapTrung', DiaDiemXuatPhat='$diaDiemXuatPhat', DiaDiemToi='$diaDiemToi', 
                  NoiTapTrung='$noiTapTrung', PhuongTienDiChuyen='$phuongTienDiChuyen', KhachSan='$khachSan', 
                  DiaDiemThamQuan='$diaDiemThamQuan', AmThuc='$amThuc', ID_HuongDanVien='$idHuongDanVien', SoVe='$soVe', 
                  Gia='$gia', GiaTreEm='$GiaTreEm', GiaEmBe='$GiaEmBe' WHERE ID_Tour=$idTour";

            if ($connect->query($query) === TRUE) {
                // Chuyển hướng sau khi cập nhật thành công
                header('Location: admin.php');
                exit; // Kết thúc kịch bản ngay sau khi chuyển hướng
            } else {
                echo "Lỗi: " . $query . "<br>" . $connect->error;
            }
        } else {
            echo "Có lỗi xảy ra khi tải lên tệp.";
        }
    } else {
        // Nếu không có tệp ảnh được tải lên, thực hiện truy vấn mà không cập nhật hình ảnh
        $query = "UPDATE tours SET TenTour='$tenTour', MoTa='$moTa', NoiDung='$noiDung' ,NgayDi='$ngayDi', NgayVe='$ngayVe', 
                  GioTapTrung='$gioTapTrung', DiaDiemXuatPhat='$diaDiemXuatPhat', DiaDiemToi='$diaDiemToi', 
                  NoiTapTrung='$noiTapTrung', PhuongTienDiChuyen='$phuongTienDiChuyen', KhachSan='$khachSan', 
                  DiaDiemThamQuan='$diaDiemThamQuan', AmThuc='$amThuc', ID_HuongDanVien='$idHuongDanVien', SoVe='$soVe', 
                  Gia='$gia', GiaTreEm='$GiaTreEm', GiaEmBe='$GiaEmBe' WHERE ID_Tour=$idTour";

        if ($connect->query($query) === TRUE) {
            echo "<script>alert('Update tour du lịch thành công!');</script>";
        } else {
            echo "Lỗi: " . $query . "<br>" . $connect->error;
        }
    }

    // Đóng kết nối
    $connect->close();
}
?>
