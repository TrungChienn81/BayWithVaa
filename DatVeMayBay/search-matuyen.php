<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tìm kiếm mã tuyến</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
/* Style cho bảng */
.table {
    width: 100%;
    margin-bottom: 1rem;
    color: #212529;
    border-collapse: collapse;
}

/* Style cho header của bảng */
.table th {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
    border-bottom: 1px solid #dee2e6;
    background-color: #f8f9fa;
}

/* Style cho các dòng của bảng */
.table td {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
}

/* Style cho nền của hàng chẵn */
.table tbody tr:nth-of-type(even) {
    background-color: #f2f2f2;
}

/* Style cho nền khi hover vào hàng */
.table tbody tr:hover {
    background-color: rgba(0, 0, 0, 0.075);
}

/* Style cho nút Action */
.delete-flight {
    color: red;
    text-decoration: none;
    display: inline-block;
    position: relative;
    width: 40px;
    height: 40px;
    overflow: hidden;
    border-radius: 50%;
}

.delete-flight i {
    font-size: 30px;
}

/* Hiệu ứng hover cho nút Action */
.delete-flight:hover .delete-hover {
    background-color: rgba(255, 0, 0, 0.5);
}

/* Hiệu ứng hover cho background của nút Action */
.delete-hover {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: transparent;
    transition: background-color 0.3s ease;
}
	</style>
</head>
<body>
	<h2 style="text-align: center;">Thông tin mã tuyến</h2>
<?php
include 'db.php';

// Kiểm tra xem biến POST có dữ liệu không
if(isset($_POST['matuyen']) && !empty($_POST['matuyen'])) {
    // Lấy mã tuyến từ form
    $matuyen = $_POST['matuyen'];

    // Câu truy vấn SQL
    $sql = "SELECT * FROM matuyen WHERE ID_MaTuyen = '$matuyen'";
    $result = mysqli_query($connect, $sql);

    // Kiểm tra xem có kết quả trả về không
    if(mysqli_num_rows($result) > 0) {
        // Hiển thị kết quả dưới dạng bảng
echo '<table class="table table-bordered">';
echo '<tr>';
echo '<th>Mã tuyến</th>';
echo '<th>Chuyến bay</th>';
echo '<th>Thông Tin Thêm</th>';
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
    $sqlDi = "SELECT * FROM chuyenbaydi WHERE ID_MaTuyen = '$idMatuyen'";
    $resultDi = $connect->query($sqlDi);

    $sqlVe = "SELECT * FROM chuyenbayve WHERE ID_MaTuyen = '$idMatuyen'";
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
    echo '<img src="img/' . $hangBayLogo . '" alt="' . $row['HangBay'] . '" class="logo"  style="max-width: 100px; max-height: 100px;">';
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
        echo '</div>';
    } else {
        echo '<div class="container mt-3">';
        echo '<p>Không tìm thấy mã tuyến phù hợp.</p>';
        echo '</div>';
    }
} else {
    echo '<div class="container mt-3">';
    echo '<p>Vui lòng nhập mã tuyến để tìm kiếm.</p>';
    echo '</div>';
}
?>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

