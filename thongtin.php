<?php
// Include file kết nối database
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['idMatuyen'])) {
    $idMatuyen = $_POST['idMatuyen'];

    // Thực hiện truy vấn để lấy thông tin từ bảng chuyenbaydi dựa trên ID_MaTuyen
    $sqlDi = "SELECT chuyenbaydi.ID_ChuyenBayDi, chuyenbaydi.SoHieu, chuyenbaydi.ThoiGianDi, chuyenbaydi.ThoiGianDen, chuyenbaydi.TrangThai, chuyenbaydi.SoLuongVe, chuyenbaydi.GiaVe, taubay.TenTauBay 
          FROM chuyenbaydi 
          JOIN taubay ON chuyenbaydi.SoHieu = taubay.SoHieu 
          WHERE chuyenbaydi.ID_MaTuyen = '$idMatuyen' AND chuyenbaydi.TrangThai = 1";
    $resultDi = $connect->query($sqlDi);

    // Thực hiện truy vấn để lấy thông tin từ bảng chuyenbayve dựa trên ID_MaTuyen
    $sqlVe = "SELECT chuyenbayve.ID_ChuyenBayVe, chuyenbayve.SoHieu, chuyenbayve.ThoiGianDi, chuyenbayve.ThoiGianDen, chuyenbayve.TrangThai, chuyenbayve.SoLuongVe, chuyenbayve.GiaVe, taubay.TenTauBay 
          FROM chuyenbayve 
          JOIN taubay ON chuyenbayve.SoHieu = taubay.SoHieu 
          WHERE chuyenbayve.ID_MaTuyen = '$idMatuyen' AND chuyenbayve.TrangThai = 1";
    $resultVe = $connect->query($sqlVe);

    if ($resultDi->num_rows > 0 || $resultVe->num_rows > 0) {
        if ($resultDi->num_rows > 0) {
            echo "<h4 style='text-align: center;'><b>🛬 Thông tin chuyến bay của mã tuyến $idMatuyen 🛫</b></h4>";
            echo "<div class='thong-tin-chuyen-bay'>";
            while ($row = $resultDi->fetch_assoc()) {
                echo "<div class='chuyen-bay-item'>";
                echo '<u><i>#</i>' . '<i>'. $row['ID_ChuyenBayDi'] . '</i>' . '</u>'. '<br>';
                echo '<strong>✈️ Tàu bay:</strong> ' . $row['TenTauBay'] . '<br>';
                echo '<strong>⏱️ Thời gian đi:</strong> ' . date('d-m-Y / H:i:s', strtotime($row['ThoiGianDi'])) . '<br>';
                echo '<strong>⏱️ Thời gian đến:</strong> ' . date('d-m-Y / H:i:s', strtotime($row['ThoiGianDen'])) . '<br>';
                if ($row['TrangThai'] == 1) {
                    echo '<strong>✅ Hiện trạng:</strong> Còn chỗ<br>';
                }
                echo '<strong>🎫 Số lượng vé:</strong> ' . $row['SoLuongVe'] . '<br>';
                echo '<strong>💸 Giá vé:</strong> ' . number_format((float)$row['GiaVe'], 0, '', '.') . ' VND<br>';
                echo "</div>";
            }
            echo "</div>";
        } 
        if ($resultVe->num_rows > 0) {
            echo "<h4 style='text-align: center;'><b>🛬 Thông tin chuyến bay của mã tuyến $idMatuyen 🛫</b></h4>";
            echo "<div class='thong-tin-chuyen-bay'>";
            while ($row = $resultVe->fetch_assoc()) {
                echo "<div class='chuyen-bay-item'>";
                echo '<u><i>#</i>' . '<i>' . $row['ID_ChuyenBayVe'] . '</i>' . '</u>'. '<br>';
                echo '<strong>✈️ Tàu bay:</strong> ' . $row['TenTauBay'] . '<br>';
                echo '<strong>⏱️ Thời gian đi:</strong> ' . date('d-m-Y / H:i:s', strtotime($row['ThoiGianDi'])) . '<br>';
                echo '<strong>⏱️ Thời gian đến:</strong> ' . date('d-m-Y / H:i:s', strtotime($row['ThoiGianDen'])) . '<br>';
                if ($row['TrangThai'] == 1) {
                    echo '<strong>✅ Hiện trạng:</strong> Còn chỗ<br>';
                }
                echo '<strong>🎫 Số lượng vé:</strong> ' . $row['SoLuongVe'] . '<br>';
                echo '<strong>💸 Giá vé:</strong> ' . number_format((float)$row['GiaVe'], 0, '', '.') . ' VND<br>';
                echo "</div>";
            }
            echo "</div>";
        } 
    } else {
        echo "Không có thông tin về chuyến bay này.";
    }
}
?>
