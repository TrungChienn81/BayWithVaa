<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy thông tin chuyến bay đi và chuyến bay về từ form
    $chuyenbaydi = $_POST['chuyenbaydi'] ?? '';
    $chuyenbayve = $_POST['chuyenbayve'] ?? '';

    // Kiểm tra và hiển thị thông tin chuyến bay đã chọn
    if (!empty($chuyenbaydi) && !empty($chuyenbayve)) {
        echo "Bạn đã chọn chuyến bay đi có ID là: " . $chuyenbaydi . "<br>";
        echo "Bạn đã chọn chuyến bay về có ID là: " . $chuyenbayve . "<br>";
    } else {
        echo "Không có chuyến bay được chọn!";
    }
}
?>