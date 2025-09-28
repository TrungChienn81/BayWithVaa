<?php
include ('db.php');
// Kiểm tra xem biểu mẫu đã được gửi chưa
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy thông tin từ biểu mẫu
    $ten_huongdanvien = $_POST['ten_huongdanvien'];
    $sodienthoai = $_POST['sodienthoai'];
    $email = $_POST['email'];
    $noi_sinh = $_POST['noi_sinh'];
    $dia_chi = $_POST['dia_chi'];
    $ngay_sinh = $_POST['ngay_sinh'];
    $cccd = $_POST['cccd'];

    // Lấy tên tệp ảnh và đường dẫn tạm thời
    $anh = $_FILES['hinh_anh']['name'];
    $anh_tmp = $_FILES['hinh_anh']['tmp_name'];

    // Di chuyển tệp ảnh vào thư mục đích
    $targetDir = 'C:/xampp/htdocs/BayWithVaa/img/';
    if (move_uploaded_file($anh_tmp, $targetDir . $anh)) {
        // Tạo truy vấn để chèn dữ liệu vào cơ sở dữ liệu
        $sql = "INSERT INTO huongdanvien (TenHuongDanVien, SoDienThoai, Email, HinhAnh, NoiSinh, DiaChi, NgaySinh, CCCD) 
                VALUES ('$ten_huongdanvien', '$sodienthoai', '$email', '$anh', '$noi_sinh', '$dia_chi', '$ngay_sinh', '$cccd')";

        if ($connect->query($sql) === TRUE) {
            echo "<script>alert('Thêm hướng dẫn viên thành công!');</script>";
        } else {
          echo "<script>alert('Thêm hướng dẫn viên thành công!');</script>" . $sql . "<br>" . $connect->error;
        }
    } else {
        echo "Lỗi khi tải lên ảnh.";
    }
}
?>
