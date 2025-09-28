<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style7.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <title>Thêm Tour</title>
</head>

<body>
    <h1>Thêm Tour Mới</h1>

    <form action="add-tour.php" method="POST" enctype="multipart/form-data" target="_blank">
		<div class="row">
			<label for="HinhAnh">Hình ảnh:</label>
			<input type="file" id="HinhAnh" name="duongdananh" accept=".jpg, .jpeg, .png, .gif">
		</div>
		
        <label for="TenTour">Tên tour:</label>
        <input type="text" id="TenTour" name="TenTour">

		<label for="MoTa">Nội dung:</label>
        <textarea id="MoTa" name="NoiDung"></textarea>
		
        <label for="MoTa">Lịch trình:</label>
        <textarea id="MoTa" name="MoTa"></textarea>

        <div class="row">
            <div class="col">
                <label for="NgayDi">Ngày đi:</label>
                <input type="date" id="NgayDi" name="NgayDi">
            </div>

            <div class="col">
                <label for="NgayVe">Ngày về:</label>
                <input type="date" id="NgayVe" name="NgayVe">
            </div>

            <div class="col">
                <label for="GioTapTrung">Giờ tập trung:</label>
                <input type="time" id="GioTapTrung" name="GioTapTrung">
            </div>
			
        </div>

        <div class="row">
            <div class="col">
                <label for="DiaDiemXuatPhat">Địa điểm xuất phát:</label>
                <input type="text" id="DiaDiemXuatPhat" name="DiaDiemXuatPhat">
            </div>

            <div class="col">
                <label for="DiaDiemToi">Địa điểm tới:</label>
                <input type="text" id="DiaDiemToi" name="DiaDiemToi">
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label for="NoiTapTrung">Nơi tập trung:</label>
                <input type="text" id="NoiTapTrung" name="NoiTapTrung">
            </div>

            <div class="col">
                <label for="PhuongTienDiChuyen">Phương tiện di chuyển:</label>
                <input type="text" id="PhuongTienDiChuyen" name="PhuongTienDiChuyen">
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label for="KhachSan">Khách sạn:</label>
                <input type="text" id="KhachSan" name="KhachSan">
            </div>

            <div class="col">
                <label for="DiaDiemThamQuan">Địa điểm tham quan:</label>
                <textarea type="text" id="DiaDiemThamQuan" name="DiaDiemThamQuan"></textarea>
            </div>
			
			<div class="col">
                <label for="AmThuc">Ẩm thực:</label>
                <textarea type="text" id="AmThuc" name="AmThuc"></textarea>
            </div>
        </div>

        <div class="row">
		<label for="ID_HuongDanVien">Hướng dẫn viên:</label>
		<select id="ID_HuongDanVien" name="ID_HuongDanVien">
			<?php
			// Kết nối database
			include 'db.php';

			// Truy vấn danh sách hướng dẫn viên (trừ ID 1574)
			$query = "SELECT ID_HuongDanVien, TenHuongDanVien FROM huongdanvien WHERE ID_HuongDanVien != '1574'";
			$result = $connect->query($query);

			// Hiển thị danh sách hướng dẫn viên trong dropdown
			while ($row = $result->fetch_assoc()) {
				echo "<option value='" . $row['ID_HuongDanVien'] . "'>" . $row['TenHuongDanVien'] . "</option>";
			}

			// Đóng kết nối
			$connect->close();
			?>
		</select>
	</div>
        <div class="row">
            <div class="col">
                <label for="SoVe">Số vé:</label>
                <input type="number" id="SoVe" name="SoVe">
            </div>

            <div class="col">
                <label for="Gia">Giá vé:</label>
                <input type="text" id="Gia" name="Gia">
            </div>
			
			<div class="col">
                <label for="Gia">Giá vé trẻ em:</label>
                <input type="text" id="TreEm" name="TreEm">
            </div>
			
		    <div class="col">
                <label for="Gia">Giá vé em bé:</label>
                <input type="text" id="EmBe" name="EmBe">
            </div>
        </div>
		<input type="hidden" name="TrangThai" value="1">

        <button type="submit" id="submit">Thêm tour</button>

    </form>
</body>

</html>
