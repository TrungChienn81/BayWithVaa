<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Flight</title>
	<link rel="stylesheet" href="style12.css">
</head>
<body>
    <h2>Thêm chuyến bay</h2>
    <form action="xuly-add-flight.php" method="post" target="_blank">
		<div class="container">
		
		<div  class="form-container">
        <label for="ma_tuyen">ID Mã Tuyến:</label><br>
        <input type="text" id="ma_tuyen" name="ma_tuyen" required><br><br>

        <label for="san_bay_di">Sân Bay Đi:</label><br>
        <select id="san_bay_di" name="san_bay_di" required>
            <?php
                include('db.php');
                
                $sql = "SELECT ID_CHK, TenSanBay FROM sanbay";
                $result = mysqli_query($connect, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='".$row['ID_CHK']."'>".$row['TenSanBay']."</option>";
                }
            ?>
        </select><br><br>

        <label for="san_bay_den">Sân Bay Đến:</label><br>
        <select id="san_bay_den" name="san_bay_den" required>
            <?php
                mysqli_data_seek($result, 0);

                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='".$row['ID_CHK']."'>".$row['TenSanBay']."</option>";
                }
            ?>
        </select><br><br>

        <label for="loai_bay">Loại Bay:</label><br>
        <select id="loai_bay" name="loai_bay" required>
            <?php
                $sql = "SELECT ID_LoaiBay, TenLoaiBay FROM loaibay";
                $result = mysqli_query($connect, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='".$row['ID_LoaiBay']."'>".$row['TenLoaiBay']."</option>";
                }
            ?>
        </select><br><br>

        <label for="khoang_cach">Khoảng Cách:</label><br>
        <input type="text" id="khoang_cach" name="khoang_cach" required><br><br>

        <label for="thoi_gian">Thời Gian:</label><br>
        <input type="date" id="thoi_gian" name="thoi_gian" required><br><br>

        <label for="hang_bay">Hãng Bay:</label><br>
        <select id="hang_bay" name="hang_bay" required>
            <option value="Vietjet Air">Vietjet Air</option>
            <option value="Vietnam Airlines">Vietnam Airlines</option>
            <option value="Bamboo Airways">Bamboo Airways</option>
            <option value="Vietravel Airlines">Vietravel Airlines</option>
        </select><br>
			<input type="hidden" id="trang_thai" name="trang_thai" value="1">
		</div>
		
		<div class="form-container">
         <h3>Thông tin chuyến bay</h3>
		<label for="id_chuyen_bay">ID Chuyến Bay:</label><br>
        <input type="text" id="id_chuyen_bay" name="id_chuyen_bay" required><br><br>

        <label for="so_hieu">Số Hiệu:</label><br>
        <select id="so_hieu" name="so_hieu" required>
            <?php
                include('db.php');
                
                $sql = "SELECT SoHieu FROM taubay";
                $result = mysqli_query($connect, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='".$row['SoHieu']."'>".$row['SoHieu']."</option>";
                }
            ?>
        </select><br><br>

        <label for="loai_bay">Loại Bay:</label><br>
        <select id="loai_bay" name="loai_bay" required>
            <?php
                $sql = "SELECT ID_LoaiBay, TenLoaiBay FROM loaibay";
                $result = mysqli_query($connect, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='".$row['ID_LoaiBay']."'>".$row['TenLoaiBay']."</option>";
                }
            ?>
        </select><br><br>

        <label for="thoi_gian_di">Thời Gian Đi:</label><br>
        <input type="datetime-local" id="thoi_gian_di" name="thoi_gian_di" required><br><br>

        <label for="thoi_gian_den">Thời Gian Đến:</label><br>
        <input type="datetime-local" id="thoi_gian_den" name="thoi_gian_den" required><br><br>

        <label for="trang_thai">Trạng Thái:</label><br>
        <input type="text" id="trang_thai" name="trang_thai" required><br><br>

        <label for="so_luong_ve">Số Lượng Vé:</label><br>
        <input type="number" id="so_luong_ve" name="so_luong_ve" required><br><br>

        <label for="gia_ve">Giá Vé:</label><br>
        <input type="number" id="gia_ve" name="gia_ve" required><br><br>

        <label for="id_ma_tuyen">ID Mã Tuyến:</label><br>
        <input type="text" id="id_ma_tuyen" name="id_ma_tuyen" required><br><br>

        <label for="id_loai_ve">ID Loại Vé:</label><br>
        <select id="id_loai_ve" name="id_loai_ve" required>
            <?php
                $sql = "SELECT ID_LoaiVe, TenLoaiVe FROM loaive";
                $result = mysqli_query($connect, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='".$row['ID_LoaiVe']."'>".$row['TenLoaiVe']."</option>";
                }
            ?>
        </select><br><br>
		</div>
		</div>
        <div class="submit-container">
            <input type="submit" value="Submit">
        </div>
    </form>
</body>
</html>
