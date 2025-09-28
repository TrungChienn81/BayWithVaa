<?php
// Kết nối đến cơ sở dữ liệu
include 'db.php';

// Kiểm tra xem có tham số ID được truyền vào không
if (isset($_GET['id'])) {
    $id_theloai = $_GET['id'];

    // Thực hiện truy vấn DELETE
    $query = "DELETE FROM theloai WHERE ID_TheLoai = $id_theloai";
    $result = mysqli_query($connect, $query);

    if ($result) {
        echo "Xóa thành công!";
		header("Location: admin.php");
    } else {
        echo "Lỗi khi xóa: " . mysqli_error($connect);
    }
} else {
    echo "Không có ID được cung cấp.";
}

// Đóng kết nối
mysqli_close($connect);
?>
