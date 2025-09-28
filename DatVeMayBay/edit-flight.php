<?php
include 'db.php';

$id_chuyenbay = isset($_GET['id']) ? $_GET['id'] : '';

// Lấy thông tin chuyến bay từ CSDL
$sql = "SELECT m.*, c.*, 'chuyenbaydi' AS loai_chuyen_bay
        FROM matuyen m 
        LEFT JOIN chuyenbaydi c ON m.ID_MaTuyen = c.ID_MaTuyen 
        WHERE c.ID_MaTuyen='$id_chuyenbay' UNION ALL

        SELECT m.*, v.*, 'chuyenbayve' AS loai_chuyen_bay
        FROM matuyen m 
        LEFT JOIN chuyenbayve v ON m.ID_MaTuyen = v.ID_MaTuyen 
        WHERE v.ID_MaTuyen='$id_chuyenbay'";

$result = $connect->query($sql);

// Kiểm tra xem có dữ liệu trả về từ CSDL hay không
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
} else {
    echo "Không tìm thấy thông tin chuyến bay.";
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Sửa thông tin chuyến bay</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
.form-container {
	padding: 20px; /* Khoảng cách bên trong */
	margin-bottom: 20px; /* Khoảng cách dưới cùng */
	float: left; /* Hiển thị các container bên cạnh nhau */
	width: calc(50% - 20px); /* Chiều rộng là 50% của container cha với khoảng cách 20px */
	border: 1px solid #ccc;
	border-radius: 10px;
	margin-left: 10px;

}

.container {
	overflow: hidden; /* Ngăn container bị tràn nếu container con có kích thước lớn hơn */
	width: 100%;
	border-radius: 10px;
}
    .btn-primary {
        margin-top: 15px;
        background-color: darkgreen; /* Màu nền */
        transition: background-color 0.3s, border-color 0.3s; /* Hiệu ứng transition */
		font-weight: bold;
    }

    .btn-primary:hover {
        background-color: lightgreen; /* Màu nền khi hover */
    }
</style>
</head>
<body>
    <div class="container" style="border: 1px solid #ccc; margin-top: 10px;">
        <h2 style="text-align: center;">Sửa chuyến bay</h2>
            <form method="post" action="update_chuyenbay.php?id=<?php echo $id_chuyenbay; ?>">
			<div class="container">
			<div  class="form-container">
            <div class="form-group">
                <input type="hidden" class="form-control" id="ma_tuyen" name="ma_tuyen" value="<?php echo $row['ID_MaTuyen']; ?>">
            </div>
            <div class="form-group">
                <label for="san_bay_di">Sân Bay Đi:</label>
                <select class="form-control" id="san_bay_di" name="san_bay_di" required>
                    <?php
                    // Lấy danh sách sân bay từ cơ sở dữ liệu
                    $sql_sanbay = "SELECT ID_CHK, TenSanBay FROM sanbay";
                    $result_sanbay = $connect->query($sql_sanbay);
                    while ($sanbay = $result_sanbay->fetch_assoc()) {
                        $selected = ($sanbay['ID_CHK'] == $row['ID_SanBayDi']) ? 'selected' : '';
                        echo "<option value='".$sanbay['ID_CHK']."' $selected>".$sanbay['TenSanBay']."</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="san_bay_den">Sân Bay Đến:</label>
                <select class="form-control" id="san_bay_den" name="san_bay_den" required>
                    <?php
                    // Reset result set pointer
                    $result_sanbay->data_seek(0);
                    while ($sanbay = $result_sanbay->fetch_assoc()) {
                        $selected = ($sanbay['ID_CHK'] == $row['ID_SanBayDen']) ? 'selected' : '';
                        echo "<option value='".$sanbay['ID_CHK']."' $selected>".$sanbay['TenSanBay']."</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="loai_bay">Loại Bay:</label>
                <select class="form-control" id="loai_bay" name="loai_bay" required>
                    <?php
                    // Lấy danh sách loại bay từ cơ sở dữ liệu
                    $sql_loaibay = "SELECT ID_LoaiBay, TenLoaiBay FROM loaibay";
                    $result_loaibay = $connect->query($sql_loaibay);
                    while ($loaibay = $result_loaibay->fetch_assoc()) {
                        $selected = ($loaibay['ID_LoaiBay'] == $row['ID_LoaiBay']) ? 'selected' : '';
                        echo "<option value='".$loaibay['ID_LoaiBay']."' $selected>".$loaibay['TenLoaiBay']."</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="khoang_cach">Khoảng Cách:</label>
                <input type="text" class="form-control" id="khoang_cach" name="khoang_cach" value="<?php echo $row['KhoangCach']; ?>">
            </div>
            <div class="form-group">
                <label for="thoi_gian">Thời Gian:</label>
                <input type="date" class="form-control" id="thoi_gian" name="thoi_gian" value="<?php echo date('Y-m-d', strtotime($row['ThoiGian'])); ?>" required>
            </div>
            <div class="form-group">
                <label for="hang_bay">Hãng Bay:</label>
                <select class="form-control" id="hang_bay" name="hang_bay" required>
                    <option value="Vietjet Air" <?php if ($row['HangBay'] == 'Vietjet Air') echo 'selected'; ?>>Vietjet Air</option>
                    <option value="Vietnam Airlines" <?php if ($row['HangBay'] == 'Vietnam Airlines') echo 'selected'; ?>>Vietnam Airlines</option>
                    <option value="Bamboo Airways" <?php if ($row['HangBay'] == 'Bamboo Airways') echo 'selected'; ?>>Bamboo Airways</option>
                    <option value="Vietravel Airlines" <?php if ($row['HangBay'] == 'Vietravel Airlines') echo 'selected'; ?>>Vietravel Airlines</option>
                </select>
            </div>
			</div>
				
			<div class="form-container">
            <div class="form-group">
				<h5>Thông tin chuyến bay</h5>
                <label for="so_hieu">Số Hiệu:</label>
                <select class="form-control" id="so_hieu" name="so_hieu" required>
                    <?php
                    // Lấy danh sách số hiệu từ cơ sở dữ liệu
                    $sql_sohieu = "SELECT SoHieu FROM taubay";
                    $result_sohieu = $connect->query($sql_sohieu);
                    while ($sohieu = $result_sohieu->fetch_assoc()) {
                        $selected = ($sohieu['SoHieu'] == $row['SoHieu']) ? 'selected' : '';
                        echo "<option value='".$sohieu['SoHieu']."' $selected>".$sohieu['SoHieu']."</option>";
                    }
                    ?>
                </select>
            </div>
			<div class="form-group">
                <label for="loai_bay">Loại Bay:</label>
                <select class="form-control" id="loai_bay" name="loai_bay" required>
                    <?php
                    // Lấy danh sách loại bay từ cơ sở dữ liệu
                    $sql_loaibay = "SELECT ID_LoaiBay, TenLoaiBay FROM loaibay";
                    $result_loaibay = $connect->query($sql_loaibay);
                    while ($loaibay = $result_loaibay->fetch_assoc()) {
                        $selected = ($loaibay['ID_LoaiBay'] == $row['ID_LoaiBay']) ? 'selected' : '';
                        echo "<option value='".$loaibay['ID_LoaiBay']."' $selected>".$loaibay['TenLoaiBay']."</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="thoi_gian_di">Thời Gian Đi:</label>
                <input type="datetime-local" class="form-control" id="thoi_gian_di" name="thoi_gian_di" value="<?php echo date('Y-m-d\TH:i', strtotime($row['ThoiGianDi'])); ?>" required>
            </div>
            <div class="form-group">
                <label for="thoi_gian_den">Thời Gian Đến:</label>
                <input type="datetime-local" class="form-control" id="thoi_gian_den" name="thoi_gian_den" value="<?php echo date('Y-m-d\TH:i', strtotime($row['ThoiGianDen'])); ?>" required>
            </div>
            <div class="form-group">
                <label for="trang_thai">Trạng Thái:</label>
                <input type="text" class="form-control" id="trang_thai" name="trang_thai" value="<?php echo $row['TrangThai']; ?>" required>
            </div>
            <div class="form-group">
                <label for="so_luong_ve">Số Lượng Vé:</label>
                <input type="number" class="form-control" id="so_luong_ve" name="so_luong_ve" value="<?php echo $row['SoLuongVe']; ?>" required>
            </div>
            <div class="form-group">
                <label for="gia_ve">Giá Vé:</label>
                <input type="number" class="form-control" id="gia_ve" name="gia_ve" value="<?php echo $row['GiaVe']; ?>" required>
            </div>
            <div class="form-group">
                <input type="hidden" class="form-control" id="id_ma_tuyen" name="id_ma_tuyen" value="<?php echo $row['ID_MaTuyen']; ?>">
            </div>
            <div class="form-group">
                <label for="id_loai_ve">ID Loại Vé:</label>
                <select class="form-control" id="id_loai_ve" name="id_loai_ve" required>
                    <?php
                    // Lấy danh sách loại vé từ cơ sở dữ liệu
                    $sql_loaive = "SELECT ID_LoaiVe, TenLoaiVe FROM loaive";
                    $result_loaive = $connect->query($sql_loaive);
                    while ($loaive = $result_loaive->fetch_assoc()) {
                        $selected = ($loaive['ID_LoaiVe'] == $row['ID_LoaiVe']) ? 'selected' : '';
                        echo "<option value='".$loaive['ID_LoaiVe']."' $selected>".$loaive['TenLoaiVe']."</option>";
                    }
                    ?>
                </select>
            </div>
			</div>
			</div>
            <button type="submit" class="btn btn-primary" style="margin-bottom: 10px;">Cập nhật</button>
        </form>
    </div>
</body>
</html>