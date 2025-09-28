<?php
include 'db.php'; // Kết nối với cơ sở dữ liệu

// Lấy giá trị ID và trạng thái mới từ yêu cầu GET
$id = $_GET['id'];
$newState = $_GET['state'];

// Cập nhật giá trị TrangThai trong cơ sở dữ liệu
$sql = "UPDATE datve SET TrangThai = $newState WHERE ID_DatVe = $id";

if ($connect->query($sql) === TRUE) {
    // Cập nhật thành công
    http_response_code(200);
} else {
    // Lỗi khi cập nhật
    http_response_code(500);
    echo "Error updating record: " . $connect->error;
}

$connect->close();
?>