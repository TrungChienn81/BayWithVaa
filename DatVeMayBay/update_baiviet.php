<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Nhận dữ liệu từ form chỉnh sửa
    $id = $_POST['id'];
    $idTheLoai = $_POST['editID_TheLoai'];
    $tieuDe = $_POST['editTieuDe'];
    $moTa = $_POST['editMoTa'];
    $tag = $_POST['editTag'];
    $anHien = $_POST['editAnHien'];
	
    // Lấy tên tệp ảnh và đường dẫn tạm thời
    $duongdananh = $_FILES['editAnhBaiViet']['name'];
    $duongdananh_tmp = $_FILES['editAnhBaiViet']['tmp_name'];
	
	$targetDir = 'C:/xampp/htdocs/BayWithVaa/img/';
	
	if (move_uploaded_file($duongdananh_tmp, $targetDir . $duongdananh)) {
    // Truy vấn để cập nhật thông tin bài viết
    $updateQuery = "UPDATE baiviet SET 
                    AnhBaiViet='$duongdananh', 
                    ID_TheLoai='$idTheLoai', 
                    TieuDe='$tieuDe', 
                    MoTa='$moTa', 
                    Tag='$tag', 
                    AnHien='$anHien' 
                    WHERE ID_News=$id";
        if ($connect->query($updateQuery) === TRUE) {
            echo "<script>alert('Update bài viết thành công!');</script>";
        } else {
            echo "Lỗi: " . $updateQuery . "<br>" . $connect->error;
        }
    } else {
        echo "Có lỗi xảy ra khi tải lên tệp.";
    }

mysqli_close($connect);
}
?>
