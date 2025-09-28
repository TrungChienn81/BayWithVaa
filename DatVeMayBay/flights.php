<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style3.css">
    <!-- Thêm Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Thêm Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <title>Danh sách chuyến bay</title>
<style>
button[type="submit"] {
    background-color: darkmagenta;
    border-color: #8a2be2; 
    color: #fff; 
	transition: background-color 0.3s, border-color 0.3s, color 0.3s; 
}

button[type="submit"]:hover {
    background-color: #9932cc; 
    border-color: #9932cc; 
}	
.edit-flight, .delete-flight {
    position: relative;
    display: inline-block;
    width: 30px;
    height: 40px;
    border-radius: 50%;
    overflow: hidden;
    text-align: center;
    text-decoration: none;
    color: inherit;
}

.edit-flight i, .delete-flight i {
    font-size: 30px;
    position: relative; /* Đảm bảo biểu tượng nằm trên hiệu ứng hover */
    z-index: 2; /* Đảm bảo biểu tượng nằm trên tất cả các phần tử khác */
}

.edit-hover, .delete-hover {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    opacity: 0;
    transition: opacity 0.3s ease;
    z-index: 1; /* Đảm bảo hiệu ứng hover nằm trên nền trắng */
}

.edit-flight:hover .edit-hover, .delete-flight:hover .delete-hover {
    background-color: #007bff; /* Màu nền hover */
}

.edit-flight:hover i, .delete-flight:hover i {
    color: peru;
}


</style>
</head>

<body>
    <!-- Thêm form tìm kiếm -->
    <div class="container mt-3">
        <form method="POST" action="search.php" target="_blank">
			🔎 Tìm bằng nơi đi và nơi đến:
            <div class="form-row align-items-center">
                <div class="col-auto">
                    <label class="sr-only" for="noidi">Nơi đi</label>
                    <select class="form-control" id="noidi" name="noidi">
                        <!-- Thêm mã PHP để hiển thị danh sách sân bay (như đã làm ở phần hiển thị thông tin chuyến bay) -->
                        <?php
                        include 'db.php';
                        $sql = "SELECT ID_CHK, TenSanBay FROM sanbay";
                        $result = $connect->query($sql);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<option value='" . $row['ID_CHK'] . "'>" . $row['TenSanBay'] . "</option>";
                            }
                        } else {
                            echo "<option value=''>Không có sân bay</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="noiden">Nơi đến</label>
                    <select class="form-control" id="noiden" name="noiden">
                        <!-- Thêm mã PHP để hiển thị danh sách sân bay (như đã làm ở phần hiển thị thông tin chuyến bay) -->
                        <?php
                        include 'db.php';
                        $sql = "SELECT ID_CHK, TenSanBay FROM sanbay";
                        $result = $connect->query($sql);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<option value='" . $row['ID_CHK'] . "'>" . $row['TenSanBay'] . "</option>";
                            }
                        } else {
                            echo "<option value=''>Không có sân bay</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="ngay">Ngày đi</label>
                    <input type="date" class="form-control" id="ngay" name="ngay">
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="loaibay">Loại bay</label>
                    <select class="form-control" id="loaibay" name="loaibay">
                        <option value="1">Một chiều</option>
                        <option value="2">Khứ hồi</option>
                    </select>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="ngayve">Ngày về</label>
                    <input type="date" class="form-control" id="ngayve" name="ngayve">
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                </div>
            </div>
        </form>
    </div>
<!-- Thêm form tìm kiếm bằng mã tuyến -->
<div class="container mt-3">
    <form method="POST" action="search-matuyen.php" target="_blank">
        <div class="form-row align-items-center">
            <div class="col-auto">
				🔎 Tìm bằng mã tuyến:
                <label class="sr-only" for="matuyen">Mã tuyến</label>
                <input type="text" class="form-control" id="matuyen" name="matuyen" placeholder="Nhập mã tuyến">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary" style="margin-top: 25px;">Tìm kiếm</button>
            </div>
        </div>
    </form>
</div>
    <?php
    include 'db.php';

    // Số chuyến bay hiển thị trên mỗi trang
    $per_page = 5;

    // Trang hiện tại
    $page = isset($_GET['page']) ? $_GET['page'] : 1;

    // Tính OFFSET
    $offset = ($page - 1) * $per_page;

    // Câu truy vấn SQL lấy dữ liệu từ bảng matuyen với phân trang
    $query = "SELECT * FROM matuyen WHERE TrangThai = 1 LIMIT $per_page OFFSET $offset";
    $result = mysqli_query($connect, $query);

    // Hiển thị danh sách chuyến bay trong bảng
    echo '<div id="chuyenbay-container">';
echo '<h2>Danh sách chuyến bay</h2>';
echo '<table class="table table-bordered">';
echo '<tr>';
echo '<th>Mã tuyến</th>';
echo '<th>Chuyến bay</th>';
echo '<th>Thông tin thêm</th>';
echo '<th>Hãng bay đi</th>';
echo '<th>Action</th>';
echo '</tr>';
while ($row = mysqli_fetch_assoc($result)) {
    echo '<tr>';
    echo '<td>' . $row['ID_MaTuyen'] . '</td>';

    // Cột chứa thông tin của matuyen
    echo '<td>';
    echo '<strong>Sân bay đi:</strong> ' . $row['ID_SanBayDi'] . '<br>';
    echo '<strong>Sân bay đến:</strong> ' . $row['ID_SanBayDen'] . '<br>';
    echo '<strong>Loại bay:</strong> ' . $row['ID_LoaiBay'] . '<br>';
    echo '<strong>Khoảng cách:</strong> ' . $row['KhoangCach'] . '<br>';
    echo '<strong>Thời gian:</strong> ' . date('d-m-Y', strtotime($row['ThoiGian'])) . '<br>';
    echo '</td>';

    // Cột chứa thông tin thêm của matuyen
    echo '<td>';
    $idMatuyen = $row['ID_MaTuyen'];
    $sqlDi = "SELECT * FROM chuyenbaydi WHERE ID_MaTuyen = '$idMatuyen' AND TrangThai = 1";
    $resultDi = $connect->query($sqlDi);

    $sqlVe = "SELECT * FROM chuyenbayve WHERE ID_MaTuyen = '$idMatuyen' AND TrangThai = 1";
    $resultVe = $connect->query($sqlVe);

    if ($resultDi->num_rows > 0) {
        while ($rowDi = $resultDi->fetch_assoc()) {
            echo '<strong>Số Hiệu:</strong> ' . $rowDi['SoHieu'] . '<br>';
            echo '<strong>Thời Gian Đi:</strong> ' . date('d-m-Y | H:i:s', strtotime($rowDi['ThoiGianDi'])) . '<br>';
			echo '<strong>Thời Gian Đến:</strong> ' . date('d-m-Y | H:i:s', strtotime($rowDi['ThoiGianDen'])) . '<br>';
            echo '<strong>Trạng Thái:</strong> ' . $rowDi['TrangThai'] . '<br>';
            echo '<strong>Số Lượng Vé:</strong> ' . $rowDi['SoLuongVe'] . '<br>';
            echo '<strong>Giá Vé:</strong> ' . number_format($rowDi['GiaVe']) . ' VND<br>';
        }
    } elseif ($resultVe->num_rows > 0) {
        while ($rowVe = $resultVe->fetch_assoc()) {
            echo '<strong>Số Hiệu:</strong> ' . $rowVe['SoHieu'] . '<br>';
            echo '<strong>Thời Gian Đi:</strong> ' . date('d-m-Y | H:i:s', strtotime($rowVe['ThoiGianDi'])) . '<br>';
			echo '<strong>Thời Gian Đến:</strong> ' . date('d-m-Y | H:i:s', strtotime($rowVe['ThoiGianDen'])) . '<br>';
            echo '<strong>Trạng Thái:</strong> ' . $rowVe['TrangThai'] . '<br>';
            echo '<strong>Số Lượng Vé:</strong> ' . $rowVe['SoLuongVe'] . '<br>';
            echo '<strong>Giá Vé:</strong> ' . number_format($rowVe['GiaVe']) . ' VND<br>';

        }
    } else {
        echo 'Không có thông tin chuyến bay đi hoặc về.';
    }
    echo '</td>';

    // Cột chứa thông tin hãng bay đi
    echo '<td>';
    // Xác định tên file ảnh tương ứng với tên hãng bay
    $hangBayLogo = strtolower(str_replace(' ', '', $row['HangBay'])) . '.png';

    // Hiển thị logo của hãng bay
    echo '<img src="img/' . $hangBayLogo . '" alt="' . $row['HangBay'] . '" class="logo"  style="max-width: 100px; max-height: 100px; border-radius: 10px;">';
    echo '</td>';
	
	
	echo '<td style="text-align: center;">
        <a href="edit-flight.php?id=' . $row['ID_MaTuyen'] . '&loaibay=' . $row['ID_LoaiBay'] . '" class="edit-flight" style="color: blue; text-decoration: none; display: inline-block; position: relative; width: 40px; height: 40px; overflow: hidden; border-radius: 50%;" target="_blank">
            <i class="fas fa-edit" style="font-size: 30px;"></i>
            <span class="edit-hover"></span>
        </a>
        <a href="delete-flight.php?id=' . $row['ID_MaTuyen'] . '&loaibay=' . $row['ID_LoaiBay'] . '" class="delete-flight" style="color: red; text-decoration: none; display: inline-block; position: relative; width: 40px; height: 40px; overflow: hidden; border-radius: 50%;" target="_blank">
            <i class="fas fa-trash" style="font-size: 30px;"></i>
            <span class="delete-hover"></span>
        </a>
    </td>';
	
	
    echo '</tr>';
}

echo '</table>';

// Hiển thị phân trang
$query_total = "SELECT COUNT(*) AS total FROM matuyen";
$result_total = mysqli_query($connect, $query_total);
$total_rows = mysqli_fetch_assoc($result_total)['total'];
$total_pages = ceil($total_rows / $per_page);

echo '<div id="pagination" class="mt-3">';
	echo "<span>Page $page of $total_pages</span>";
if ($page > 1) {
    echo '<a href="#" class="btn btn-primary pagination-btn" onclick="fetchChuyenBayData(' . ($page - 1) . ')">Previous</a>';
} else {
    echo '<span class="btn btn-secondary pagination-btn inactive">Previous</span>';
}

if ($page < $total_pages) {
    echo '<a href="#" class="btn btn-primary pagination-btn" onclick="fetchChuyenBayData(' . ($page + 1) . ')">Next</a>';
} else {
    echo '<span class="btn btn-secondary pagination-btn inactive">Next</span>';
}

echo '</div>';
echo '</div>';
?>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>


</html>
