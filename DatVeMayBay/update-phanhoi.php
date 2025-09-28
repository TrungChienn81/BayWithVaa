<?php
// Kết nối database
include 'db.php';

if(isset($_GET['id'])) {
    $id = $_GET['id'];

    // Cập nhật trạng thái AnHien thành 1 trong cơ sở dữ liệu
    $query_update = "UPDATE phanhoi SET AnHien = 1 WHERE ID_PhanHoi = $id";
    mysqli_query($connect, $query_update);

    // Chuyển hướng trở lại trang admin.php
    echo "<script>alert('Đã hiển thị phản hồi thành công!');</script>";
    exit();
}
?>
