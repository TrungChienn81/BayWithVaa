<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách liên hệ</title>
    <link rel="stylesheet" href="style9.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>
    <h1>Danh sách liên hệ</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
				<th>Ngày</th>
                <th>Họ Tên</th>
                <th>Email</th>
                <th>Số Điện Thoại</th>
                <th>Nội Dung</th>
                <th>Xử lý liên lạc</th>
            </tr>
        </thead>
        <tbody>
<?php
// Kết nối database
include 'db.php';

// Số liên hệ hiển thị trên mỗi trang
$per_page = 10;

// Trang hiện tại
$page = isset($_GET['page']) ? $_GET['page'] : 1;

// Tính OFFSET
$offset = ($page - 1) * $per_page;

// Truy vấn danh sách liên hệ với phân trang
$query = "SELECT ID_LienHe, HoTen, Email, SoDienThoai, NoiDung, Ngay, TrangThai FROM lienhe ORDER BY ID_LienHe DESC LIMIT $per_page OFFSET $offset";
$result = $connect->query($query);

// Hiển thị dữ liệu từ database
while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row['ID_LienHe'] . "</td>";
    echo "<td>" . date('d-m-Y | H:i:s', strtotime($row['Ngay'])) . "</td>";
    echo "<td>" . $row['HoTen'] . "</td>";
    echo "<td>" . $row['Email'] . "</td>";
    echo "<td>" . $row['SoDienThoai'] . "</td>";
    echo "<td>" . $row['NoiDung'] . "</td>";
    echo "<td>";
    if ($row['TrangThai'] == NULL) {
        echo "<a href='update_status.php?id={$row['ID_LienHe']}' class='btn-status' target='_blank'><i class='fa fa-times'></i></a>";
    } else if ($row['TrangThai'] == 1) {
        echo "<span class='tagged'><i class='fa fa-check'></i></span>";
    }
    echo "</td>";
    echo "</tr>";
}

// Tính tổng số liên hệ
$query_total = "SELECT COUNT(*) AS total FROM lienhe";
$result_total = mysqli_query($connect, $query_total);
$total_rows = mysqli_fetch_assoc($result_total)['total'];
$total_pages = ceil($total_rows / $per_page);
?>

        </tbody>
    </table>
<div class="pagination">
    <?php
    // Hiển thị số trang hiện tại
    echo "<span>Page $page of $total_pages</span>";

    // Hiển thị nút Previous
    if ($page > 1) {
        $previous_page = $page - 1;
        echo "<a href='javascript:void(0);' onclick='fetchContractData($previous_page)'>Previous</a>";
    } else {
        echo "<a class='disabled'>Previous</a>";
    }

    // Hiển thị nút Next
    if ($page < $total_pages) {
        $next_page = $page + 1;
        echo "<a href='javascript:void(0);' onclick='fetchContractData($next_page)'>Next</a>";
    } else {
        echo "<a class='disabled'>Next</a>";
    }
    ?>
</div>

</body>

</html>
