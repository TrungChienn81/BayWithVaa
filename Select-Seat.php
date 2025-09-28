<?php
	include ('db.php');
	session_start();
?>
<?php
// Kiểm tra xem người dùng đã đăng nhập hay chưa
if(isset($_SESSION['email'])) {
    $email = $_SESSION['email']; // Lấy email từ session
    $menu_content = '<li><a href="home.php">Trang chủ</a></li>
                     <li><a href="travel.php">Địa điểm</a></li>
                     <li><a href="News.php">Tin tức</a></li>
                     <li><a href="contract.php">Liên hệ</a></li>
                     <li><a href="logout-main.php">Đăng xuất</a> <span id="email-display">' . $email . '</span></li>';
} else {
    $menu_content = '<li><a href="home.php">Trang chủ</a></li>
                     <li><a href="travel.php">Địa điểm</a></li>
                     <li><a href="News.php">Tin tức</a></li>
                     <li><a href="contract.php">Liên hệ</a></li>
                     <li><a href="login.php">Đăng nhập</a></li>';
}
?>
<?php
// Kiểm tra xem có dữ liệu về các ghế đã chọn từ form không
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['selected_seats'])) {
    // Lấy danh sách các ghế đã chọn từ form
    $selectedSeats = $_POST['selected_seats'];
    
    // Lưu danh sách các ghế đã chọn vào session
    $_SESSION['selected_seats'] = $selectedSeats;

    // Chuyển hướng người dùng đến trang thanh toán
    header("Location: PayFlight.php");
    exit;
}
?>

<!DOCTYPE HTML>
<!--
	Traveler by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BayWithVAA &mdash; </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/calenderFlight.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<style>
	#email-display {
    font-size: 20px; /* Cỡ chữ */
    margin-left: 10px; /* Khoảng cách với liên kết "Đăng xuất" */
    font-weight: bold; /* In đậm */
	}	
.seat {
    display: inline-block;
    width: 60px; /* Độ rộng của mỗi ghế */
    height: 60px; /* Độ cao của mỗi ghế */
    border: 2px solid #ccc; /* Viền của ghế */
    border-radius: 5px; /* Bo tròn viền */
    margin: 5px; /* Khoảng cách giữa các ghế */
    text-align: center; /* Canh giữa nội dung */
    line-height: 60px; /* Căn giữa theo chiều dọc */
}

.seat input[type="checkbox"] {
    display: block; /* Ẩn checkbox gốc */
}

.seat input[type="checkbox"] + label {
    position: relative;
    display: inline-block;
    width: 20px; /* Độ rộng của checkbox tùy chỉnh */
    height: 20px; /* Độ cao của checkbox tùy chỉnh */
    background-color: #fff;
    border: 2px solid #ccc;
    border-radius: 3px;
    cursor: pointer;
}

.seat input[type="checkbox"]:checked + label::after {
    content: "\2713"; /* Ký hiệu '✓' */
    font-size: 16px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
		
.seat input[type="checkbox"] + label:hover {
    background-color: #f1f1f1;
}

/* Tạo hiệu ứng khi checkbox được chọn */
.seat input[type="checkbox"]:checked + label {
    background-color: #007bff;
    border-color: #007bff;
}

/* Hiệu ứng khi di chuột qua checkbox khi checkbox được chọn */
.seat input[type="checkbox"]:checked + label:hover {
    background-color: #0056b3;
    border-color: #0056b3;
}
		
.plane-container {
    position: relative;
    margin: auto; /* Căn giữa theo chiều ngang */
    width: 1000px; /* Độ rộng tối đa của máy bay */
    padding-top: 20px; /* Khoảng cách từ đỉnh trang đến máy bay */
	top: -115px;
}

.seat-row {
    display: flex;
    justify-content: center; /* Căn giữa các hàng ghế theo chiều ngang */
    margin-top: 20px; /* Khoảng cách giữa các hàng ghế */
}
.seating-plan-container {
    border: 2px solid #000;
    padding: 10px;
    margin: 20px auto;
    width: 30%; /* Điều chỉnh độ rộng khung */
}

.seat-row {
    display: flex;
    justify-content: space-between;
}
.btn-back,
.btn-continue {
    display: inline-block; /* Hiển thị như các phần tử khối */
    padding: 10px 20px; /* Kích thước padding */
    margin: 10px; /* Khoảng cách với các phần tử khác */
    border-radius: 15px; /* Bo tròn góc */
    cursor: pointer; /* Hiển thị con trỏ khi di chuột qua */
    text-decoration: none; /* Loại bỏ gạch chân */
    color: #fff; /* Màu chữ */
	font-weight: bold;
    font-size: 16px; /* Cỡ chữ */
    background-color: #09C6AB; /* Màu nền */
    transition: background-color 0.3s; /* Hiệu ứng chuyển đổi màu nền */
	border: none;
	width: 10%;
}

.btn-back:hover,
.btn-continue:hover {
    background-color: darkgreen; /* Màu nền khi di chuột qua */
}
	</style>
	</head>
	<body>
		
	<!-- <div class="gtco-loader"></div> -->
		
	<div id="page">

	
	<!-- <div class="page-inner"> -->
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-sm-4 col-xs-12">
						<div id="gtco-logo"><a href="index.html">BayWithVAA <em>.</em></a></div>
					</div>
					<div class="col-xs-8 text-right menu-1">
						<ul>
							<?php echo $menu_content; ?>
						</ul>	
					</div>
				</div>
				
			</div>
		</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/Dalatimg.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">

						<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>Đặt vé máy bay</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
<div class="news-detail-container">
	<?php
// Kiểm tra nếu tổng số vé được lưu trong session
if (!isset($_SESSION['tongSoVe'])) {
    // Nếu không có, điều hướng người dùng đến trang chứa form chọn số vé
    echo("Bạn chưa chọn số vé, vui lòng quay lại nhập số vé!");
    exit;
}

// Lấy tổng số vé từ session
$tongSoVe = $_SESSION['tongSoVe'];

// Khởi tạo mảng để lưu trữ các ghế đã chọn
$selectedSeats = [];

// Kiểm tra xem đã có dữ liệu về các ghế đã chọn trong session chưa
if (isset($_SESSION['selected_seats'])) {
    $selectedSeats = $_SESSION['selected_seats'];
}

// Xử lý dữ liệu khi form được gửi đi
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy thông tin về các ghế đã chọn từ form
    if (isset($_POST['selected_seats'])) {
        $selectedSeats = $_POST['selected_seats'];
        // Kiểm tra xem số lượng ghế đã chọn có vượt quá số vé yêu cầu không
        if (count($selectedSeats) > $tongSoVe) {
            echo "<p style='color:red;'>Bạn đã chọn quá số vé yêu cầu. Vui lòng bỏ chọn những ghế dư thừa.</p>";
        } else {
            // Lưu thông tin các ghế đã chọn vào session
            $_SESSION['selected_seats'] = $selectedSeats;

            exit;
        }
    }
}
?>

<div class="news-detail-container">
    <h2>Chọn Ghế</h2>
    <form id="seatForm" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <!-- Đoạn mã HTML để chọn ghế -->
        <h4>Vui lòng chọn ghế cho <?php  echo $_SESSION['tongSoVe'] ?> vé:</h4>
		<div class="seating-plan-container" style="border-radius: 10px;">
			<div class="seat-row">
        <div class="seat">
            <input type="checkbox" name="selected_seats[]" value="A1"> Ghế A1
        </div>
        <div class="seat">
            <input type="checkbox" name="selected_seats[]" value="A2"> Ghế A2
        </div>
        <div class="seat">
            <input type="checkbox" name="selected_seats[]" value="A3"> Ghế A3
        </div>
		<div class="seat">
            <input type="checkbox" name="selected_seats[]" value="A4"> Ghế A4
        </div>
		<div class="seat">
            <input type="checkbox" name="selected_seats[]" value="A5"> Ghế A5
        </div>
	</div>	
		
			<div class="seat-row">
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="B1"> Ghế B1
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="B2"> Ghế B2
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="B3"> Ghế B3
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="B4"> Ghế B4
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="B5"> Ghế B5
		</div>
	</div>

	<div class="seat-row">
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="C1"> Ghế C1
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="C2"> Ghế C2
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="C3"> Ghế C3
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="C4"> Ghế C4
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="C5"> Ghế C5
		</div>
	</div>

	<div class="seat-row">
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="D1"> Ghế D1
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="D2"> Ghế D2
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="D3"> Ghế D3
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="D4"> Ghế D4
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="D5"> Ghế D5
		</div>
	</div>

	<div class="seat-row">
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="E1"> Ghế E1
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="E2"> Ghế E2
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="E3"> Ghế E3
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="E4"> Ghế E4
		</div>
		<div class="seat">
			<input type="checkbox" name="selected_seats[]" value="E5"> Ghế E5
		</div>
	</div>
	</div>
        <!-- Nút gửi -->
		<a href="CustomerInfo.php" class="btn-back" style="text-align: center;"><i class="fas fa-arrow-left" style="margin-right: 10px;"></i>Quay lại</a>
		<button type="submit" class="btn-continue" style="float: right;">Tiếp tục<i class="fas fa-arrow-right" style="margin-left: 10px;"></i></button>
    </form>
</div>
	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>BayWithVAA</h3>
						<p>Công ty TNHH Du Lịch và Dịch Vụ BayWithVAA</p>
					</div>
				</div>

				<div class="col-md-2 col-md-push-1">
					<div class="gtco-widget">
						<h3>Giới thiệu</h3>
						<ul class="gtco-footer-links">
							<li><a href="#">Về chúng tôi</a></li>
							<li><a href="#">Hỗ trợ</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-2 col-md-push-1">
					<div class="gtco-widget">
						<h3>Điểm điến</h3>
						<ul class="gtco-footer-links">
							<li><a href="#">Miền Bắc</a></li>
							<li><a href="#">Miền Nam</a></li>
							<li><a href="#">Miền Trung</a></li>
							<li><a href="#">Nước ngoài</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-md-push-1">
					<div class="gtco-widget">
						<h3>Liên hệ</h3>
						<ul class="gtco-quick-contact">
							<li><a href="#"><i class="icon-phone"></i> +1 234 567 890</a></li>
							<li><a href="#"><i class="icon-mail2"></i> BWV@gmail.com</a></li>
							<li><a href="#"><i class="icon-chat"></i> Nhắn tin trực tuyến</a></li>
						</ul>
					</div>
				</div>

			</div>

		</div>
	</footer>
	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	

	<!-- Main -->
	<script src="js/main.js"></script>
	<script>
    document.getElementById("seatForm").addEventListener("submit", function(event) {
        var selectedSeats = document.querySelectorAll('input[name="selected_seats[]"]:checked');
        if (selectedSeats.length > <?php echo $tongSoVe; ?>) {
            event.preventDefault();
        }
    });
</script>
<script>
    document.getElementById("seatForm").addEventListener("submit", function(event) {
        // Lấy số lượng ghế đã chọn
        var selectedSeats = document.querySelectorAll('input[name="selected_seats[]"]:checked').length;

        // Lấy tổng số vé yêu cầu
        var totalTickets = <?php echo $tongSoVe; ?>;

        // Kiểm tra nếu số lượng ghế đã chọn không bằng số lượng vé yêu cầu
        if (selectedSeats !== totalTickets) {
            // Ngăn form gửi đi
            event.preventDefault();
            
            // Hiển thị thông báo
            if (selectedSeats < totalTickets) {
                alert("Vui lòng chọn đủ " + totalTickets + " ghế.");
            } else {
                alert("Vui lòng chỉ chọn " + totalTickets + " ghế.");
            }
        }
    });
</script>
	</body>
</html>

