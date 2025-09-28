<?php
include 'db.php';

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    
    // Escape và chuẩn bị câu truy vấn
    $id = mysqli_real_escape_string($connect, $id);
    
    // Lấy dữ liệu từ bảng matuyen
    $query = "SELECT * FROM matuyen WHERE ID_MaTuyen = '$id'";
    $result = mysqli_query($connect, $query);
    $row = mysqli_fetch_assoc($result); // Fetch the row
    
    if($row) {
        // Xóa dữ liệu từ bảng chuyenbaydi hoặc chuyenbayve tùy thuộc vào ID_LoaiBay
        $delete_query = "";
        if ($row['ID_LoaiBay'] == 1) {
            $delete_query = "DELETE FROM chuyenbaydi WHERE ID_MaTuyen = '$id'";
        } elseif ($row['ID_LoaiBay'] == 2) {
            $delete_query = "DELETE FROM chuyenbayve WHERE ID_MaTuyen = '$id'";
        }
        
        // Thực thi câu truy vấn
        if($delete_query !== "" && mysqli_query($connect, $delete_query)) {
            // Nếu xóa thành công từ bảng chuyenbaydi hoặc chuyenbayve, tiếp tục xóa từ bảng matuyen
            $delete_matuyen_query = "DELETE FROM matuyen WHERE ID_MaTuyen = '$id'";
            if(mysqli_query($connect, $delete_matuyen_query)) {
                echo "<script>alert('Đã xóa chuyến bay thành công!');</script>";
            } else {
                echo "<script>alert('Lỗi xóa chuyến bay, vui lòng thử lại!');</script>" . mysqli_error($connect);
            }
        } else {
            echo "Lỗi: " . mysqli_error($connect);
        }
    } else {
        echo "Không tìm thấy dữ liệu với ID_MaTuyen = $id";
    }
} else {
    echo "ID không được cung cấp.";
}

// Đóng kết nối
mysqli_close($connect);
?>
