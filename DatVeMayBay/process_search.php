<?php
include 'db.php'; // Điều chỉnh đường dẫn đến tệp kết nối cơ sở dữ liệu của bạn

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Xử lý khi form được gửi đi
    $noidi = $_POST['noidi'];
    $noiden = $_POST['noiden'];
    $ngay = $_POST['ngay'];

    // Thực hiện truy vấn để lấy thông tin chuyến bay dựa trên nơi đi, nơi đến và ngày từ bảng matuyen
    $sql = "SELECT * FROM matuyen WHERE ID_SanBayDi = '$noidi' AND ID_SanBayDen = '$noiden' AND ThoiGian = '$ngay'";
    $result = $connect->query($sql);

    if ($result->num_rows > 0) {
        // Hiển thị thông tin các chuyến bay tìm được từ bảng matuyen
        while ($row = $result->fetch_assoc()) {
            // Tạo khung hoặc bảng cho mỗi chuyến bay
            echo "<div style='border: 1px solid #000; padding: 10px; margin-bottom: 10px;'>";
            echo "<strong>ID Mã Tuyến:</strong> " . $row['ID_MaTuyen'] . "<br>";
            echo "<strong>ID Sân Bay Đi:</strong> " . $row['ID_SanBayDi'] . "<br>";
            echo "<strong>ID Sân Bay Đến:</strong> " . $row['ID_SanBayDen'] . "<br>";
            echo "<strong>ID Loại Bay:</strong> " . $row['ID_LoaiBay'] . "<br>";
            echo "<strong>Khoảng Cách:</strong> " . $row['KhoangCach'] . "<br>";
            echo "<strong>Thời Gian:</strong> " . $row['ThoiGian'] . "<br>";

            // Tạo nút "Xem thêm" và div chứa thông tin chi tiết chuyến bay
            echo "<button class='btnXemThem' data-idMaTuyen='" . $row['ID_MaTuyen'] . "'>Xem thêm</button>";
            echo "<div class='divThongTin'></div>"; // Thông tin chi tiết chuyến bay sẽ hiển thị ở đây

            echo "</div>";
        }
    } else {
        echo "Không có chuyến bay phù hợp.";
    }
}
exit();
?>
