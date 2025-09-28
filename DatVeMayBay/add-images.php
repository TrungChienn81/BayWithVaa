<?php
// Kết nối cơ sở dữ liệu
include ('db.php');

$message = ''; // Khởi tạo biến để lưu thông báo

// Kiểm tra nếu có ID_Tour được gửi đến
if (isset($_GET['id'])) {
    $tourId = $_GET['id'];

    // Xử lý xóa tất cả các ảnh của tour
    if (isset($_POST['delete_all'])) {
        $sql_delete_images = "DELETE FROM tours_images WHERE ID_Tour = $tourId";
        if ($connect->query($sql_delete_images)) {
            $message = "Đã xóa tất cả ảnh của tour thành công.";
        } else {
            $message = "Có lỗi xảy ra khi xóa ảnh của tour.";
        }
    }

    // Xử lý upload ảnh
    if (isset($_FILES['images'])) {
        $images = $_FILES['images'];
        $validImages = array();

        // Lặp qua từng file ảnh
        for ($i = 0; $i < count($images['name']); $i++) {
            $imageName = $images['name'][$i];
            $imageTmpName = $images['tmp_name'][$i];
            $imageSize = $images['size'][$i];
            $imageError = $images['error'][$i];

            // Kiểm tra lỗi và kích thước ảnh
            if ($imageError == 0 && $imageSize <= 2097152) { // 2MB
                $imageNameParts = explode('.', $imageName);
                $imageExtension = strtolower(end($imageNameParts));
                $allowedExtensions = array('jpg', 'jpeg', 'png', 'gif');

                if (in_array($imageExtension, $allowedExtensions)) {
                    $newImageName = uniqid('', true) . '.' . $imageExtension;
                    $uploadPath = 'C:/xampp/htdocs/BayWithVaa/img/' . $newImageName;

                    if (move_uploaded_file($imageTmpName, $uploadPath)) {
                        // Lưu thông tin ảnh vào bảng tour_images
                        $sql = "INSERT INTO tours_images (ID_Tour, Images) VALUES ($tourId, '$newImageName')";
                        if ($connect->query($sql)) {
                            $message = "Ảnh đã được tải lên thành công.";
                        } else {
                            $message = "Có lỗi xảy ra khi lưu ảnh vào cơ sở dữ liệu.";
                        }
                    } else {
                        $message = "Có lỗi xảy ra khi tải lên ảnh.";
                    }
                } else {
                    $message = "Chỉ cho phép tải lên các file ảnh có định dạng JPG, JPEG, PNG, GIF.";
                }
            } else {
                $message = "Có lỗi xảy ra khi tải lên ảnh. Vui lòng thử lại.";
            }
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Thêm Ảnh</title>
</head>
<style>
/* Style cho form */
form {
    margin-bottom: 20px;
}

/* Style cho input type file */
input[type="file"] {
    margin-right: 10px;
}

/* Style cho nút tải lên và nút xóa */
input[type="submit"] {
    padding: 8px 16px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

/* Thêm một phần cách cho các form */
form + form {
    margin-top: 10px;
}

</style>
<body>
    <h2>Thêm ảnh chi tiết</h2>
    <?php if (!empty($message)) : ?>
        <p><?php echo $message; ?></p>
    <?php endif; ?>
    <form method="post" enctype="multipart/form-data">
        <input type="file" name="images[]" multiple>
        <input type="submit" value="Tải lên">
    </form>

    <!-- Nút xóa tất cả ảnh -->
	<h2>Xóa ảnh chi tiết</h2>
    <form method="post">
        <input type="submit" name="delete_all" value="Xóa tất cả ảnh">
    </form>
</body>
</html>
