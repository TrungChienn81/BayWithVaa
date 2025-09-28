<?php
include('db.php');
session_start();

// Kiểm tra xem người dùng đã đăng nhập chưa
if (!isset($_SESSION['admin_email'])) {
    // Nếu chưa, chuyển hướng về trang đăng nhập
    header("Location: /BayWithVaa/login.php");
    exit();
} else {
    // Nếu đã đăng nhập, lấy email của người dùng từ session
    $admin_email = $_SESSION['admin_email'];
		// Truy vấn để lấy thông tin người dùng từ bảng user dựa vào email
	$query_user_info = "SELECT * FROM user WHERE Email = '$admin_email'";
	$result_user_info = mysqli_query($connect, $query_user_info);
	$row_user_info = mysqli_fetch_assoc($result_user_info);
}

// Truy vấn để lấy tổng số vé đặt tour từ bảng bookings
$query_total_bookings = "SELECT COUNT(*) AS total_bookings FROM bookings";
$result_total_bookings = mysqli_query($connect, $query_total_bookings);
$row_total_bookings = mysqli_fetch_assoc($result_total_bookings);
$total_bookings = $row_total_bookings['total_bookings'];

// Truy vấn để lấy tổng số vé đặt vé máy bay từ bảng datve và datvekhuhoi
$query_total_airline_tickets = "SELECT COUNT(*) AS total_airline_tickets FROM datve UNION SELECT COUNT(*) AS total_airline_tickets FROM datvekhuhoi";
$result_total_airline_tickets = mysqli_query($connect, $query_total_airline_tickets);

$total_airline_tickets = 0;

while ($row = mysqli_fetch_assoc($result_total_airline_tickets)) {
    $total_airline_tickets += $row['total_airline_tickets'];
}

// Hàm để chuyển đổi giá thành sang định dạng VND
function formatCurrency($amount)
{
    return number_format($amount, 0, ',', '.') . ' VNĐ';
}
// Truy vấn để tính tổng số tiền từ bảng chitietdatve và chitietdatvekhuhoi
$query_total_revenue = "SELECT SUM(TongTien) AS total_revenue FROM 
                        (SELECT TongTien FROM chitietdatve
                        UNION ALL
                        SELECT TongTien FROM chitietdatvekhuhoi) AS total";
$result_total_revenue = mysqli_query($connect, $query_total_revenue);
$row_total_revenue = mysqli_fetch_assoc($result_total_revenue);
$total_revenue = $row_total_revenue['total_revenue'];

// Truy vấn để lấy tổng số tiền từ cột TongTien trong bảng bookings
$query_total_tour = "SELECT SUM(TongTien) AS total_tour FROM bookings";
$result_total_tour = mysqli_query($connect, $query_total_tour);
$row_total_tour = mysqli_fetch_assoc($result_total_tour);
$total_tour = $row_total_tour['total_tour'];

// Lấy tháng và năm hiện tại
$current_month = date('m');
$current_year = date('Y');

// Truy vấn để tính tổng doanh thu từ các bảng
$query_total = "SELECT SUM(TongTien) AS totals FROM (
    SELECT TongTien FROM chitietdatve WHERE MONTH(NgayDat) = $current_month AND YEAR(NgayDat) = $current_year
    UNION ALL
    SELECT TongTien FROM chitietdatvekhuhoi WHERE MONTH(NgayDat) = $current_month AND YEAR(NgayDat) = $current_year
    UNION ALL
    SELECT TongTien FROM bookings WHERE MONTH(NgayDat) 	= $current_month AND YEAR(NgayDat) = $current_year
) AS total_my";
$result_total = mysqli_query($connect, $query_total);
$row_total = mysqli_fetch_assoc($result_total);
$total = $row_total['totals'];

// Truy vấn để lấy các task của người dùng từ bảng note, chỉ lấy những task có TrangThai = 0 và sắp xếp theo ID giảm dần
$query = "SELECT ID_Note, UserGiao, TieuDe, NgayGiao, MoTa, MucDo, TrangThai FROM note WHERE ID_User = (
    SELECT ID_User FROM user WHERE Email = '$admin_email'
) AND TrangThai = 0 ORDER BY ID_Note DESC"; // Sắp xếp theo ID_Note giảm dần

$result = mysqli_query($connect, $query);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Admin Page</title>
    <link rel="stylesheet" href="stylehome.css">
    <!-- Thêm font awesome để sử dụng biểu tượng chuông -->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-**************************" crossorigin="anonymous" />
    <style>
        .low-priority {
            font-weight: bold;
            color: lawngreen;
        }

        .medium-priority {
            font-weight: bold;
            color: orange;
        }

        .high-priority {
            font-weight: bold;
            color: red;
        }

        .task-details div {
            letter-spacing: 1px;
            font-size: 18px;
        }
.update-flight {
        padding: 10px 20px;
        text-decoration: none;
        background-color: orangered; 
        color: #fff; 
        border: none; 
        border-radius: 5px; 
        transition: background-color 0.3s ease;
		font-weight: bold;
    }

    .update-flight:hover {
        background-color: orange; 
    }
.update-tour {
        padding: 10px 20px;
        text-decoration: none;
        background-color: deeppink; 
        color: #fff; 
        border: none; 
        border-radius: 5px; 
        transition: background-color 0.3s ease;
		font-weight: bold;
    }

    .update-tour:hover {
        background-color: hotpink; 
    }
.tour-guide {
        padding: 10px 20px;
        text-decoration: none;
        background-color: #05B390; 
        color: #fff; 
        border: none; 
        border-radius: 5px; 
        transition: background-color 0.3s ease;
		font-weight: bold;
    }

    .tour-guide:hover {
        background-color: darkseagreen; 
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="task-list">
            <a href="note-form.php" class="add-note" target="_blank">📜 Add Note</a>
			<a href="capnhat-chuyenbay.php" class="update-flight" target="_blank">✈️ Update Flight</a>
			<a href="capnhat-tour.php" class="update-tour" target="_blank">🌴 Update Tour</a>
			<a href="add-tour-guide.php" class="tour-guide" target="_blank">🙎 Add Tour Guide</a>
            <h2 style="float: right;">Bảng thông báo</h2>
            <ul>
                <?php
                // Hiển thị các task
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<li>";
                    echo "<div class='task-details'>";
                    echo "<div><strong>ID: </strong>" . $row['ID_Note'] . "</div>";
                    echo "<div><strong>From: </strong>" . $row['UserGiao'] . "</div>";
                    echo "<div><strong>Date: </strong>" . date('d-m-Y | H:i:s', strtotime($row['NgayGiao'])) . "</div>";
					echo "<hr>";
					echo "<div><strong>Title: </strong>" . $row['TieuDe'] . "</div>";
                    echo "<div><strong>Nội dung: </strong>" . $row['MoTa'] . "</div>";
                    $mucDoClass = '';
                    switch ($row['MucDo']) {
                        case 'Low':
                            $mucDoClass = 'low-priority';
                            break;
                        case 'Medium':
                            $mucDoClass = 'medium-priority';
                            break;
                        case 'High':
                            $mucDoClass = 'high-priority';
                            break;
                        default:
                            $mucDoClass = '';
                            break;
                    }
                    echo "<div><strong>Độ ưu tiên: </strong><span class='" . $mucDoClass . "'>" . $row['MucDo'] . "</span></div>";

                    // Hiển thị nút Done nếu trạng thái là 0
                    if ($row['TrangThai'] == 0) {
                        echo "<a href='home-status.php?id=" . $row['ID_Note'] . "' class='done-button' target='_blank'>Done</a>";
                    }

                    echo "</div>";
                    echo "</li>";
                }
                ?>
            </ul>
        </div>
        <div class="status-indicators">
            <div class="status-indicator">
                <div class="head" style="background-color: red;"><i class="fab fa-telegram-plane"></i></div>
                <div class="body">
                    <p style="text-align: center; margin: 0; margin-top: 5px; font-weight: bold; font-size: 20px;">Tổng số đặt vé máy bay</p>
					<p style="text-align: center; margin: 0; margin-top: 5px; margin-top: 20px; color: #08E821; font-size: 20px;"><?php echo $total_airline_tickets; ?> vé</p>
                </div>
            </div>
            <div class="status-indicator">
                <div class="head" style="background-color: orange;"><i class="fas fa-umbrella-beach"></i></div>
                <div class="body">
                    <p style="text-align: center; margin: 0; margin-top: 5px; font-weight: bold; font-size: 20px;">Tổng số vé đặt tour</p>
                    <p style="text-align: center; margin: 0; margin-top: 5px; margin-top: 20px; color: #08E821; font-size: 20px;"><?php echo $total_bookings; ?> vé</p>
                </div>
            </div>
            <div class="status-indicator">
                <div class="head" style="background-color: yellow;"><i class="fas fa-hand-holding-usd"></i></div>
                <div class="body">
                    <p style="text-align: center; margin: 0; margin-top: 5px; font-weight: bold; font-size: 20px;">Tổng doanh thu vé máy bay</p>
					<p style="text-align: center; margin: 0; margin-top: 5px; margin-top: 20px; color: #08E821; font-size: 20px;"><?php echo formatCurrency($total_revenue); ?></p>
                </div>
            </div>
            <div class="status-indicator">
                <div class="head" style="background-color: green;"><i class="fas fa-dollar-sign"></i></div>
                <div class="body">
                    <p style="text-align: center; margin: 0; margin-top: 5px; font-weight: bold; font-size: 20px;">Tổng doanh thu vé du lịch</p>
					<p style="text-align: center; margin: 0; margin-top: 5px; margin-top: 20px; color: #08E821; font-size: 20px;"><?php echo formatCurrency($total_tour); ?></p>
                </div>
            </div>
            <div class="status-indicator">
                <div class="head" style="background-color: blue;"><i class="fas fa-search-dollar"></i></div>
                <div class="body">
				<p style="text-align: center; margin: 0; margin-top: 5px; font-weight: bold; font-size: 20px;">Doanh thu tháng <?php echo $current_month; ?> năm <?php echo $current_year; ?></p>
				<p style="text-align: center; margin: 0; margin-top: 5px; margin-top: 20px; color: #08E821; font-size: 20px;"><?php echo formatCurrency($total); ?></p>
				</div>
            </div>
        </div>
    </div>
    <hr>
<div id="user-info-container">
    <form action="update-account.php" method="post" id="form-user" target="_blank">
		<h2>Thông tin cá nhân</h2>
        <div class="user-info">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<?php echo $row_user_info['Email']; ?>" readonly>
        </div>
        <div class="user-info">
            <label for="fullname">Họ tên:</label>
            <input type="text" id="fullname" name="fullname" value="<?php echo $row_user_info['HoTen']; ?>" readonly>
        </div>
        <div class="user-info">
            <label for="phone">Số điện thoại:</label>
            <input type="text" id="phone" name="phone" value="<?php echo $row_user_info['SoDienThoai']; ?>" readonly>
        </div>
        <div class="user-info">
            <label for="address">Địa chỉ:</label>
            <input type="text" id="address" name="address" value="<?php echo $row_user_info['DiaChi']; ?>" readonly>
        </div>
        <div class="user-info">
            <label for="dob">Ngày sinh:</label>
            <input type="text" id="dob" name="dob" value="<?php echo date('d-m-Y', strtotime($row_user_info['NgaySinh'])); ?>" readonly>
        </div>
        <input type="submit" value="Cập nhật">
    </form>
</div>
</body>

</html>
