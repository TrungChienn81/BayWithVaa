<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
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
/* CSS cho nút Xem, nút Chỉnh sửa và nút Xóa */
.show-button, .edit-link, .delete-button {
    text-decoration: none;
    padding: 5px 10px;
    text-align: center;
    font-size: 20px;
    border-radius: 40px;
    display: inline-block;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s; /* Hiệu ứng chuyển đổi màu nền */
}

.show-button {
    background-color: #f39c12; /* Màu nền của nút Xem */
    color: white; /* Màu chữ của nút Xem */
}

.edit-link {
    background-color: #007bff; /* Màu nền của nút Chỉnh sửa */
    color: white; /* Màu chữ của nút Chỉnh sửa */
}

.delete-button {
    background-color: #dc3545; /* Màu nền của nút Xóa */
    color: white; /* Màu chữ của nút Xóa */
}

.show-button:hover, .edit-link:hover, .delete-button:hover {
    background-color: greenyellow; /* Màu nền khi di chuột qua các nút */
}

.pagination {
    margin-top: 20px;
}
.pagination-container {
    display: flex;
    justify-content: center;
}

.pagination a {
    display: inline-block;
    padding: 8px 16px;
    text-decoration: none;
    color: black;
    background-color: #0713E0; 
    border-radius: 4px; 
    margin: 0 4px;
    transition: background-color 0.3s; 
}

.pagination a.active {
    background-color: #4CAF50; 
    color: white;
}

.pagination a.disabled {
    pointer-events: none; 
    color: #999; 
    background-color: #ddd; 
}

.pagination a:hover:not(.active):not(.disabled) {
    background-color: #2E86C1;
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
    width: 10%; /* Độ rộng của cột Chỉnh sửa */
}

/* Cột Xóa */
th:nth-child(7),
td:nth-child(7) {
    width: 10%; /* Độ rộng của cột Xóa */
}

    </style>

    <title>Xem Xét Bài Viết</title>
</head>

<body>
    <h1 style="margin-bottom: 20px; font-size: 3em;">Các bài viết</h1>
	
	<form action="search_news.php" method="GET" target="_blank">
		<input type="text" name="searchQuery" placeholder="Nhập từ khóa hoặc ID">
		<button type="submit" style="font-size: 1em; border-radius: 5px; background-color: #007bff; color: white; border: none; padding: 5px 10px;">Tìm kiếm</button>
	</form>

    <div class="content" id="searchResults">	
<?php
// Kết nối đến cơ sở dữ liệu
include 'db.php';

// Số bài viết hiển thị trên mỗi trang
$per_page = 5;

// Trang hiện tại
$page = isset($_GET['page']) ? $_GET['page'] : 1;

// Tính OFFSET
$offset = ($page - 1) * $per_page;

// Truy vấn để lấy dữ liệu từ bảng baiviet với phân trang và thông tin người đăng
$query = "SELECT baiviet.ID_News, baiviet.AnhBaiViet, baiviet.TieuDe, baiviet.NgayDang, user.Email 
          FROM baiviet 
          INNER JOIN user ON baiviet.ID_User = user.ID_User 
          ORDER BY baiviet.ID_News DESC
          LIMIT $per_page OFFSET $offset";

$result = mysqli_query($connect, $query);

// Tính tổng số trang
$total_records = mysqli_num_rows(mysqli_query($connect, "SELECT * FROM baiviet"));
$total_pages = ceil($total_records / $per_page);

// Hiển thị dữ liệu trong bảng HTML
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
         echo "<img src='/BayWithVaa/img/{$row['AnhBaiViet']}' alt='Ảnh bài viết' style='width: 200px; height: auto; border-radius: 10px;' class='thumbnail'>";
    } else {
        echo "Không có ảnh";
    }

    echo "</td>
            <td>{$row['TieuDe']}</td>             
            <td>{$formattedDate}</td>
            <td>{$row['Email']}</td>
            <td><a href='edit.php?id={$row['ID_News']}' class='edit-link' target='_blank'><i class='fas fa-pencil-alt'></i></a></td>
            <td><a class='delete-button' target='_blank' href='delete.php?id={$row['ID_News']}'><i class='fas fa-trash'></i></a></td>
			<td><a class='show-button' target='_blank' href='http://localhost/BayWithVaa/newsdetail.php?id={$row['ID_News']}'><i class='fas fa-eye'></i></a></td>
          </tr>";
}

echo "</table>";

// Đóng kết nối
mysqli_close($connect);
?>
	</div>
<div class="pagination-container">
    <div class="pagination">
        <?php
        // Hiển thị số trang hiện tại
        echo "<span style='margin-top:6px;'>Page $page of $total_pages</span>";

        // Hiển thị nút Previous
        if ($page > 1) {
            $previous_page = $page - 1;
            echo "<a href='javascript:void(0);' onclick='fetchNewsData($previous_page)'>Previous</a>";
        } else {
            echo "<a class='disabled'>Previous</a>";
        }

        // Hiển thị nút Next
        if ($page < $total_pages) {
            $next_page = $page + 1;
            echo "<a href='javascript:void(0);' onclick='fetchNewsData($next_page)'>Next</a>";
        } else {
            echo "<a class='disabled'>Next</a>";
        }
        ?>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('.delete-button').on('click', function (event) {
            // Ngăn chặn hành vi mặc định của nút xóa
            event.preventDefault();

            // Hiển thị cửa sổ xác nhận
            var result = confirm("Bạn có chắc chắn muốn xóa bài viết này không?");
            if (result) {
                // Nếu người dùng xác nhận, thực hiện chuyển hướng đến trang xóa
                var deleteUrl = $(this).attr('href');
                window.location.href = deleteUrl;
            } else {
                // Nếu người dùng không xác nhận, không làm gì cả
                console.log("Xác nhận xóa bị từ chối.");
            }
        });
    });
</script>
</body>

</html>
