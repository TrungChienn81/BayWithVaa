<?php
// Kết nối đến cơ sở dữ liệu
include 'db.php';

// Kiểm tra xem có tham số 'id' trên URL không
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Truy vấn để xóa bài viết dựa trên ID_News
    $query = "DELETE FROM baiviet WHERE ID_News = $id";
    $result = mysqli_query($connect, $query);

    if ($result) {
        echo "<script>alert('Xóa bài viết thành công!');</script>";
    } else {
        echo "<script>alert('Xóa bài viết thất bại, vui lòng thử lại!');</script>";
    }
	
    // Đóng kết nối
    mysqli_close($connect);
} else {
    echo "Không có ID bài viết.";
}
?>
