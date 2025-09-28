<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style7.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
	<!-- Thêm Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Thêm Summernote CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.css">
    <title>Cập nhật Tour</title>
</head>

<body>
    <?php
    // Kết nối database
    include 'db.php';

    // Kiểm tra xem có ID tour được chọn không
    if (isset($_GET['id'])) {
        $id = $_GET['id'];

        // Truy vấn thông tin của tour được chọn
        $query = "SELECT * FROM tours WHERE ID_Tour = $id";
        $result = $connect->query($query);

        if ($result->num_rows > 0) {
            // Lấy thông tin tour
            $row = $result->fetch_assoc();
    ?>
            <form action="update-tour.php" method="POST" enctype="multipart/form-data" target="_blank">
                <!-- Ẩn trường ID_Tour để gửi cùng với dữ liệu chỉnh sửa -->
                <input type="hidden" name="ID_Tour" value="<?php echo $row['ID_Tour']; ?>">
				<h2 style="text-align: center;">Chỉnh sửa tour du lịch</h2>
                <label for="HinhAnh">Hình ảnh:</label>
                <input type="file" id="HinhAnh" name="HinhAnh" accept=".jpg, .jpeg, .png, .gif">
                <img src="/BayWithVaa/img/<?php echo $row['HinhAnh']; ?>" style="width: 200px; height: auto;"><br><br>
				
                <label for="TenTour">Tên tour:</label>
                <input type="text" id="TenTour" name="TenTour" value="<?php echo $row['TenTour']; ?>">
				
				<div class="description-form">
				<label for="NoiDung">Nội dung:</label>
                <textarea id="NoiDung" name="NoiDung"><?php echo $row['NoiDung']; ?></textarea>
					
                <label for="MoTa">Lịch trình:</label>
                <textarea id="MoTa" name="MoTa"><?php echo $row['MoTa']; ?></textarea>
				</div>
				
                <div class="row">
                    <div class="col">
                        <label for="NgayDi">Ngày đi:</label>
                        <input type="date" id="NgayDi" name="NgayDi" value="<?php echo $row['NgayDi']; ?>">
                    </div>

                    <div class="col">
                        <label for="NgayVe">Ngày về:</label>
                        <input type="date" id="NgayVe" name="NgayVe" value="<?php echo $row['NgayVe']; ?>">
                    </div>

                    <div class="col">
                        <label for="GioTapTrung">Giờ tập trung:</label>
                        <input type="time" id="GioTapTrung" name="GioTapTrung" value="<?php echo $row['GioTapTrung']; ?>">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <label for="DiaDiemXuatPhat">Địa điểm xuất phát:</label>
                        <input type="text" id="DiaDiemXuatPhat" name="DiaDiemXuatPhat" value="<?php echo $row['DiaDiemXuatPhat']; ?>">
                    </div>

                    <div class="col">
                        <label for="DiaDiemToi">Địa điểm tới:</label>
                        <input type="text" id="DiaDiemToi" name="DiaDiemToi" value="<?php echo $row['DiaDiemToi']; ?>">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <label for="NoiTapTrung">Nơi tập trung:</label>
                        <input type="text" id="NoiTapTrung" name="NoiTapTrung" value="<?php echo $row['NoiTapTrung']; ?>">
                    </div>

                    <div class="col">
                        <label for="PhuongTienDiChuyen">Phương tiện di chuyển:</label>
                        <input type="text" id="PhuongTienDiChuyen" name="PhuongTienDiChuyen" value="<?php echo $row['PhuongTienDiChuyen']; ?>">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <label for="KhachSan">Khách sạn:</label>
                        <input type="text" id="KhachSan" name="KhachSan" value="<?php echo $row['KhachSan']; ?>">
                    </div>

                    <div class="col">
                        <label for="DiaDiemThamQuan">Địa điểm tham quan:</label>
                        <textarea type="text" id="DiaDiemThamQuan" name="DiaDiemThamQuan"><?php echo $row['DiaDiemThamQuan']; ?></textarea>
                    </div>
					
					<div class="col">
                        <label for="DiaDiemThamQuan">Ẩm thực:</label>
                        <textarea type="text" id="AmThuc" name="AmThuc"><?php echo $row['AmThuc']; ?></textarea>
                    </div>
                </div>

               <div class="row">
					<label for="ID_HuongDanVien" style="margin-left: 20px;">Hướng dẫn viên:</label>
					<select id="ID_HuongDanVien" name="ID_HuongDanVien">
						<?php
						// Truy vấn danh sách hướng dẫn viên (trừ ID 1574)
						$query_hdv = "SELECT ID_HuongDanVien, TenHuongDanVien FROM huongdanvien WHERE ID_HuongDanVien != '1574'";
						$result_hdv = $connect->query($query_hdv);

						// Hiển thị danh sách hướng dẫn viên trong dropdown
						while ($row_hdv = $result_hdv->fetch_assoc()) {
							$selected = ($row['ID_HuongDanVien'] == $row_hdv['ID_HuongDanVien']) ? "selected" : "";
							echo "<option value='" . $row_hdv['ID_HuongDanVien'] . "' $selected>" . $row_hdv['TenHuongDanVien'] . "</option>";
						}
						?>
					</select>
				</div>
                <div class="row">
                    <div class="col">
                        <label for="SoVe">Số vé:</label>
                        <input type="number" id="SoVe" name="SoVe" value="<?php echo $row['SoVe']; ?>">
                    </div>

                    <div class="col">
                        <label for="Gia">Giá:</label>
                        <input type="text" id="Gia" name="Gia" value="<?php echo $row['Gia']; ?>">
                    </div>
					
					<div class="col">
                        <label for="Gia">Giá vé trẻ em:</label>
                        <input type="text" id="Gia" name="GiaTreEm" value="<?php echo $row['GiaTreEm']; ?>">
                    </div>
					
					<div class="col">
                        <label for="Gia">Giá vé em bé:</label>
                        <input type="text" id="Gia" name="GiaEmBe" value="<?php echo $row['GiaEmBe']; ?>">
                    </div>
                </div>

                <button type="submit">Lưu chỉnh sửa</button>

            </form>
    <?php
        } else {
            echo "<p>Không tìm thấy tour.</p>";
        }
    } else {
        echo "<p>Không có ID tour được chỉ định.</p>";
    }

    // Đóng kết nối
    $connect->close();
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
            $('#MoTa').summernote({
                height: 200 // Chiều cao của trình soạn thảo
                // Các tùy chọn khác nếu cần
            });
        });
    </script>
	    <script>
        $(document).ready(function() {
            // Chọn phần mô tả và kích hoạt Summernote
            $('#NoiDung').summernote({
                height: 200 // Chiều cao của trình soạn thảo
                // Các tùy chọn khác nếu cần
            });
        });
    </script>
</body>

</html>
