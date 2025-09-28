<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        /* CSS cho bảng kết quả tìm kiếm */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        td {
            color: black;
        }

        th {
            background-color: #555;
            color: white;
        }

        /* Cột ID */
        th:nth-child(1),
        td:nth-child(1) {
            width: 5%; /* Độ rộng của cột ID */
        }

        /* Cột Ảnh */
        th:nth-child(2),
        td:nth-child(2) {
            width: 15%; /* Độ rộng của cột Ảnh */
        }

        /* Cột Tiêu Đề */
        th:nth-child(3),
        td:nth-child(3) {
            width: 25%; /* Độ rộng của cột Tiêu Đề */
        }

        /* Cột Ngày Đăng */
        th:nth-child(4),
        td:nth-child(4) {
            width: 15%; /* Độ rộng của cột Ngày Đăng */
        }

        /* Cột Người Đăng */
        th:nth-child(5),
        td:nth-child(5) {
            width: 20%; /* Độ rộng của cột Người Đăng */
        }

        /* Cột Chỉnh sửa */
        th:nth-child(6),
        td:nth-child(6) {
            width: 5%; /* Độ rộng của cột Chỉnh sửa */
        }

        /* Cột Xóa */
        th:nth-child(7),
        td:nth-child(7) {
            width: 5%; /* Độ rộng của cột Xóa */
        }

        /* Cột Xem */
        th:nth-child(8),
        td:nth-child(8) {
            width: 5%; /* Độ rộng của cột Xem */
        }

        .thumbnail {
            max-width: 100%;
            height: auto;
        }

        /* CSS cho nút chỉnh sửa, nút xóa và nút xem */
        .edit-link, .delete-button, .show-button {
            text-decoration: none;
            padding: 5px 10px;
            text-align: center;
            font-size: 16px;
            border-radius: 5px;
            display: inline-block;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .edit-link {
            background-color: #007bff;
            color: white;
        }

        .delete-button {
            background-color: #dc3545;
            color: white;
        }

        .show-button {
            background-color: #28a745;
            color: white;
        }

        .edit-link:hover, .delete-button:hover, .show-button:hover {
            background-color: #0056b3;
        }
    </style>

    <title>Kết quả tìm kiếm</title>
</head>
<body>
	<h2 style="text-align: center;">Thông tin bài viết</h2>
<?php
// Kết nối đến cơ sở dữ liệu
include 'db.php';

// Lấy từ khóa tìm kiếm từ tham số GET
$searchTerm = isset($_GET['searchQuery']) ? $_GET['searchQuery'] : '';

// Truy vấn để lấy dữ liệu từ bảng baiviet với điều kiện tìm kiếm
$query = "SELECT baiviet.ID_News, baiviet.AnhBaiViet, baiviet.TieuDe, baiviet.NgayDang, user.Email 
          FROM baiviet 
          INNER JOIN user ON baiviet.ID_User = user.ID_User 
          WHERE baiviet.ID_News LIKE '%$searchTerm%' OR baiviet.TieuDe LIKE '%$searchTerm%'";
$result = mysqli_query($connect, $query);

// Kiểm tra số bản ghi trả về
if (mysqli_num_rows($result) > 0) {
    // Hiển thị dữ liệu tìm được trong bảng HTML
    echo "<table>
            <tr>
                <th>ID</th>
                <th>Ảnh</th>
                <th>Tiêu Đề</th>
                <th>Ngày Đăng</th>
                <th>Người Đăng</th>
                <th>Chỉnh sửa</th>
                <th>Xóa</th>
                <th>Xem</th>
            </tr>";

    while ($row = mysqli_fetch_assoc($result)) {
        $formattedDate = date("d-m-Y | H:i:s", strtotime($row['NgayDang']));
        echo "<tr>
                <td>{$row['ID_News']}</td>
                <td>";

        // Kiểm tra nếu có đường dẫn ảnh
        if (!empty($row['AnhBaiViet'])) {
             echo "<img src='/BayWithVaa/img/{$row['AnhBaiViet']}' alt='Ảnh bài viết' style='width: 200px; height: auto;' class='thumbnail'>";
        } else {
            echo "Không có ảnh";
        }

        echo "</td>
                <td>{$row['TieuDe']}</td>             
                <td>{$formattedDate}</td>
                <td>{$row['Email']}</td>
                <td><a href='edit.php?id={$row['ID_News']}' class='edit-link' target='_blank'><i class='fas fa-pencil-alt'></i></a></td>
                <td><a class='delete-button' href='delete.php?id={$row['ID_News']}'><i class='fas fa-trash'></i></a></td>
                <td><a class='show-button' target='_blank' href='http://localhost/BayWithVaa/newsdetail.php?id={$row['ID_News']}'><i class='fas fa-eye'></i></a></td>
              </tr>";
    }

    echo "</table>";
} else {
    echo "Không tìm thấy kết quả nào.";
}

// Đóng kết nối
mysqli_close($connect);
?>

</body>
</html>
