<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Thêm Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Thêm Summernote CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.css">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

         form {
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            width: 1100px;
            max-width: 100%;
            box-sizing: border-box;
            resize: both; /* Cho phép thay đổi kích thước cả chiều rộng và chiều cao */
            overflow: auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input,
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea.form-control {
            resize: both; /* Cho phép thay đổi kích thước cả chiều rộng và chiều cao */
            overflow: hidden; /* Ẩn thanh cuộn khi thay đổi kích thước */
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>

    <title>Chỉnh Sửa Bài Viết</title>
</head>
<body>

    <?php
    // Kết nối đến cơ sở dữ liệu
    include 'db.php';
	
    // Kiểm tra xem có tham số 'id' trên URL không
    if (isset($_GET['id'])) {
        $id = $_GET['id'];

        // Truy vấn để lấy thông tin bài viết dựa trên ID_News
        $query = "SELECT * FROM baiviet WHERE ID_News = $id";
        $result = mysqli_query($connect, $query);

        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            ?>
            <form method="post" action="update_baiviet.php" enctype="multipart/form-data">
                <!-- Các trường chỉnh sửa -->
                <input type="hidden" name="id" value="<?php echo $row['ID_News']; ?>">
				<h2 style="text-align: center;">Chỉnh sửa bài viết</h2>
                <div class="form-group">
                    <label for="editAnhBaiViet">Ảnh Bài Viết:</label>
                    <input type="file" class="form-control" id="editAnhBaiViet" name="editAnhBaiViet" value="<?php echo $row['AnhBaiViet']; ?>" required>
					<img src="/BayWithVaa/img/<?php echo $row['AnhBaiViet']; ?>" style="width: 200px; height: auto;"><br><br>
                </div>

                <div class="form-group">
                    <label for="editID_TheLoai">Thể Loại:</label>
                    <select class="form-control" id="editID_TheLoai" name="editID_TheLoai">
                        <?php
                        // Truy vấn để lấy toàn bộ thể loại
                        $queryTheLoai = "SELECT * FROM theloai";
                        $resultTheLoai = mysqli_query($connect, $queryTheLoai);

                        // Hiển thị danh sách thể loại trong dropdown
                        while ($rowTheLoai = mysqli_fetch_assoc($resultTheLoai)) {
                            $selected = ($rowTheLoai['ID_TheLoai'] == $row['ID_TheLoai']) ? 'selected' : '';
                            echo "<option value='{$rowTheLoai['ID_TheLoai']}' $selected>{$rowTheLoai['TenTheLoai']}</option>";
                        }
                        ?>
                    </select>
                </div>

                <div class="form-group">
                    <label for="editTieuDe">Tiêu Đề:</label>
                    <input type="text" class="form-control" id="editTieuDe" name="editTieuDe" value="<?php echo $row['TieuDe']; ?>" required>
                </div>

                <div class="form-group">
                    <label for="editMoTa">Mô Tả:</label>
                    <textarea class="form-control" id="editMoTa" name="editMoTa" cols="30" rows="5"><?php echo $row['MoTa']; ?></textarea>
                </div>

                <div class="form-group">
                    <label for="editTag">Tag:</label>
                    <input type="text" class="form-control" id="editTag" name="editTag" value="<?php echo $row['Tag']; ?>" required>
                </div>

                <div class="form-group">
                    <label for="editAnHien">Ẩn Hiện:</label>
                    <input type="text" class="form-control" id="editAnHien" name="editAnHien" value="<?php echo $row['AnHien']; ?>" required>
                </div>

                <button type="submit" class="btn btn-success">Lưu Chỉnh Sửa</button>
            </form>
            <?php
        } else {
            echo "Không tìm thấy bài viết.";
        }

    } else {
        echo "Không có ID bài viết.";
    }

    mysqli_close($connect);
    ?>

    <!-- Thêm Summernote JavaScript -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.js"></script>

    <!-- Script để kích hoạt Summernote -->
    <script>
        $(document).ready(function() {
            // Chọn phần mô tả và kích hoạt Summernote
            $('#editMoTa').summernote({
                height: 200 // Chiều cao của trình soạn thảo
                // Các tùy chọn khác nếu cần
            });
        });
    </script>
</body>
</html>
