<?php
	include('db.php');
	
?>

<!DOCTYPE html>
<html lang="en"
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link type="text/css" rel="stylesheet" href="style2.css">
	<title>Thêm Bài Viết</title>
 
</head>

<body>
<div id="add-baiviet-form">
    <h2 style="margin-bottom: 20px; font-size: 3em;">Thêm Bài Viết</h2>
    <form id="form-baiviet" method="post" action="add-baiviet.php" enctype="multipart/form-data" target="_blank">
		
        <!-- Các trường của form, ví dụ: -->
        <label for="anhBaiViet">Ảnh Bài Viết:</label>
        <input type="file" id="anhBaiViet" name="anhBaiViet" accept="image/*" required>

        <label for="idTheLoai">Thể Loại:</label>
        <select id="idTheLoai" name="idTheLoai" required>
            <!-- Thực hiện truy vấn để lấy dữ liệu từ bảng 'theloai' và hiển thị các option -->
            <?php
                $queryTheloai = "SELECT * FROM theloai";
                $resultTheloai = mysqli_query($connect, $queryTheloai);

                while ($rowTheloai = mysqli_fetch_assoc($resultTheloai)) {
                    echo '<option value="' . $rowTheloai['ID_TheLoai'] . '">' . $rowTheloai['TenTheLoai'] . '</option>';
                }
            ?>
        </select>
	
        <label for="tieuDe">Tiêu Đề:</label>
        <input type="text" id="tieuDe" name="tieuDe" required>

        <label for="moTa">Mô Tả:</label>
		<textarea id="moTa" name="moTa"></textarea>
				
        <label for="tag">Tag:</label>
        <input type="text" id="tag" name="tag" required>

        <label for="anHien">Ẩn Hiện:</label>
        <input type="text" id="anHien" name="anHien" required>

        <input type="submit" value="Thêm Bài Viết">
    </form>

</div>


</body>
</html>
