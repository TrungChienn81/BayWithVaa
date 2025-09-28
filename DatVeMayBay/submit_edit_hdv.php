<?php
// Kết nối đến cơ sở dữ liệu
require_once 'db.php';

// Kiểm tra xem có dữ liệu được gửi từ form không
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Kiểm tra xem có tồn tại ID hướng dẫn viên không
    if(isset($_POST['id'])) {
        $id = $_POST['id'];

        // Lấy dữ liệu từ form
        $ten_huongdanvien = $_POST['ten_huongdanvien'];
        $sodienthoai = $_POST['sodienthoai'];
        $email = $_POST['email'];
        $noi_sinh = $_POST['noi_sinh'];
        $dia_chi = $_POST['dia_chi'];
        $ngay_sinh = $_POST['ngay_sinh'];
        $cccd = $_POST['cccd'];

        // Kiểm tra xem có tệp ảnh mới được tải lên không
        if(isset($_FILES['hinh_anh']) && $_FILES['hinh_anh']['error'] === UPLOAD_ERR_OK) {
            $anh = $_FILES['hinh_anh']['name'];
            $anh_tmp = $_FILES['hinh_anh']['tmp_name'];
            $targetDir = 'C:/xampp/htdocs/BayWithVaa/img/';

            // Di chuyển tệp ảnh mới vào thư mục đích
            if (move_uploaded_file($anh_tmp, $targetDir . $anh)) {
                // Nếu di chuyển thành công, cập nhật đường dẫn ảnh mới trong cơ sở dữ liệu
                $sql_update = "UPDATE huongdanvien SET HinhAnh='$anh' WHERE ID_HuongDanVien='$id'";
                $result_update = $connect->query($sql_update);
            }
        }

        // Cập nhật thông tin của hướng dẫn viên trong cơ sở dữ liệu
        $sql = "UPDATE huongdanvien SET TenHuongDanVien='$ten_huongdanvien', SoDienThoai='$sodienthoai', Email='$email', NoiSinh='$noi_sinh', DiaChi='$dia_chi', NgaySinh='$ngay_sinh', CCCD='$cccd' WHERE ID_HuongDanVien='$id'";
        $result = $connect->query($sql);

        if ($result) {
            echo "<script>alert('Đã chỉnh sửa thành công!');</script>";
        } else {
            // Nếu có lỗi xảy ra, hiển thị thông báo lỗi
            echo "<script>alert('Có lỗi khi chỉnh sửa, vui lòng thử lại!');</script>";
        }
    } else {
        echo "<script>alert('Thiếu ID hướng dẫn viên!');</script>";
    }
} else {
    echo "<script>alert('Yêu cầu không hợp lệ!');</script>";
}
$connect->close();
?>
