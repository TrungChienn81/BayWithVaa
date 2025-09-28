<?php
// Kết nối database
include 'db.php';

// Lấy id được truyền vào 
$id = $_GET['id'];

// Câu truy vấn update trạng thái  
$sql = "UPDATE lienhe 
        SET TrangThai = 1 
        WHERE ID_LienHe = $id";

// Thực hiện truy vấn   
$result = mysqli_query($connect, $sql);

echo "<script>alert('Đã xử lý thành công!');</script>";

?>