<?php
session_start();
include 'db.php';

// Kiểm tra nếu người dùng chưa đăng nhập, chuyển hướng về trang đăng nhập
if (!isset($_SESSION['admin_email'])) {
    header("Location: /BayWithVaa/login.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy thông tin về người đăng từ session
    $admin_email = $_SESSION['admin_email'];

    // Lấy ID_User từ cơ sở dữ liệu dựa trên email người đăng
    $queryGetUserId = "SELECT ID_User FROM user WHERE Email = '$admin_email'";
    $resultGetUserId = mysqli_query($connect, $queryGetUserId);
    
    if ($rowGetUserId = mysqli_fetch_assoc($resultGetUserId)) {
        $ID_User = $rowGetUserId['ID_User'];

        // Lấy dữ liệu từ form
        $anhBaiViet = $_FILES['anhBaiViet']['name'];
        $id_theLoai = $_POST['idTheLoai'];
        $tieuDe = $_POST['tieuDe'];
        $moTa = $_POST['moTa'];
        $tag = $_POST['tag'];
        $anHien = $_POST['anHien'];

        // Lấy tên tệp ảnh và đường dẫn tạm thời
        $duongdananh_tmp = $_FILES['anhBaiViet']['tmp_name'];

        // Thư mục lưu trữ ảnh
        $targetDir = 'C:/xampp/htdocs/BayWithVaa/img/';

        // Di chuyển tệp ảnh vào thư mục đích
        if (move_uploaded_file($duongdananh_tmp, $targetDir . $anhBaiViet)) {
            // Thực hiện truy vấn để thêm bài viết
            $query = "INSERT INTO baiviet (ID_User, AnhBaiViet, NgayDang, ID_TheLoai, TieuDe, MoTa, Tag, AnHien)
                      VALUES ('$ID_User', '$anhBaiViet', CURRENT_DATE, $id_theLoai, '$tieuDe', '$moTa', '$tag', $anHien)";

            if (mysqli_query($connect, $query)) {
                echo "<script>alert('Thêm bài viết thành công!');</script>";
                exit();
            } else {
                echo "Error: " . mysqli_error($connect);
            }
        } else {
            echo "Có lỗi xảy ra khi tải lên tệp.";
        }
    } else {
        echo "Không tìm thấy ID_User cho người đăng.";
    }

    mysqli_close($connect);
}
?>
