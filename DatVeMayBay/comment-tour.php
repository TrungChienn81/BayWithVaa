<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách liên hệ</title>
	<link rel="stylesheet" href="style10.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>
    <h1>Danh sách bình luận</h1>

    <table>
        <thead>
            <tr>
				<th>ID Phản Hồi</th>
                <th>Tour</th>
                <th>User</th>
                <th>Ngày Bình Luận</th>
                <th>Nội Dung</th>
				<th>Sao</th>				
                <th>Ẩn/Hiện</th>
				<th>Xem</th>
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

		// Truy vấn danh sách phản hồi với phân trang
		$query = "SELECT phanhoi.ID_Tour, phanhoi.ID_PhanHoi, phanhoi.ID_User, phanhoi.NgayPhanHoi, phanhoi.NoiDung, phanhoi.Sao, phanhoi.AnHien, tours.TenTour, user.Email 
				  FROM phanhoi 
				  INNER JOIN tours ON phanhoi.ID_Tour = tours.ID_Tour
				  INNER JOIN user ON phanhoi.ID_User = user.ID_User
				  ORDER BY phanhoi.ID_PhanHoi DESC 
				  LIMIT $per_page OFFSET $offset";
		$result = $connect->query($query);

		// Hiển thị dữ liệu từ database
		while ($row = $result->fetch_assoc()) {
			echo "<tr>";
			echo "<td>" . $row['ID_PhanHoi'] . "</td>";
			echo "<td>" . $row['TenTour'] . "</td>";
			echo "<td>" . $row['Email'] . "</td>";
			echo "<td>" . date('d-m-Y | H:i:s', strtotime($row['NgayPhanHoi'])) . "</td>";
			echo "<td>" . $row['NoiDung'] . "</td>";
			echo "<td>" . $row['Sao'] . "</td>";
			echo "<td>";
			if ($row['AnHien'] == 0) {
				echo "<a href='update-phanhoi.php?id={$row['ID_PhanHoi']}' class='btn-status' target='_blank'><i class='fa fa-times'></i></a>";
			} else if ($row['AnHien'] == 1) {
				echo "<span class='tagged'><i class='fa fa-check'></i></span>";
			}
			echo "</td>";
			echo "<td><a class='show-button' target='_blank' href='http://localhost/BayWithVaa/destinationDetails.php?id={$row['ID_Tour']}'><i class='fas fa-eye'></i></a></td>";
			echo "</tr>";
		}

		// Tính tổng số phản hồi
		$query_total = "SELECT COUNT(*) AS total FROM phanhoi";
		$result_total = mysqli_query($connect, $query_total);
		$total_rows = mysqli_fetch_assoc($result_total)['total'];
		$total_pages = ceil($total_rows / $per_page);
		?>

        </tbody>
    </table>
    <div class="pagination" style="text-align: center;">
        <?php
        // Hiển thị số trang hiện tại
        echo "<span>Page $page of $total_pages</span>";

        // Hiển thị nút Previous
        if ($page > 1) {
            $previous_page = $page - 1;
            echo "<a href='javascript:void(0);' onclick='fetchCommentTourData($previous_page)'>Previous</a>";
        } else {
            echo "<a class='disabled'>Previous</a>";
        }

        // Hiển thị nút Next
        if ($page < $total_pages) {
            $next_page = $page + 1;
            echo "<a href='javascript:void(0);' onclick='fetchCommentTourData($next_page)'>Next</a>";
        } else {
            echo "<a class='disabled'>Next</a>";
        }
        ?>
    </div>

</body>

</html>
