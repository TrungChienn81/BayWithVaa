<?php
include 'db.php';
session_start();
?>
<?php
// Hàm xóa chuyến bay từ session
function removeFlight($loaibay, $matuyenToRemove) {
    if(isset($_SESSION['selected_flights']) && isset($_SESSION['selected_flights'][$loaibay])) {
        // Lặp qua các chuyến bay đã chọn và loại bỏ chuyến bay cần xóa
        foreach ($_SESSION['selected_flights'][$loaibay] as $key => $matuyen) {
            if ($matuyen === $matuyenToRemove) {
                unset($_SESSION['selected_flights'][$loaibay][$key]);
                break;
            }
        }
        // Nếu không còn chuyến bay nào trong loại bay, loại bỏ cả loại bay đó khỏi session
        if (empty($_SESSION['selected_flights'][$loaibay])) {
            unset($_SESSION['selected_flights'][$loaibay]);
        }
    }
}

// Xử lý khi người dùng nhấp vào nút "Xóa"
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['remove_matuyen']) && isset($_POST['remove_loaibay'])) {
    $matuyenToRemove = $_POST['remove_matuyen'];
    $loaibayToRemove = $_POST['remove_loaibay'];
    removeFlight($loaibayToRemove, $matuyenToRemove);
    // Chuyển hướng người dùng lại trang test.php để cập nhật lại thông tin
    header("Location: CustomerInfo.php");
    exit();
}
?>
<?php
// Kiểm tra xem người dùng đã đăng nhập hay chưa
if(isset($_SESSION['email'])) {
    $email = $_SESSION['email']; // Lấy email từ session
    $menu_content = '<li><a href="home.php">Trang chủ</a></li>
                     <li><a href="travel.php">Địa điểm</a></li>
                     <li><a href="News.php">Tin tức</a></li>
                     <li><a href="contact.php">Liên hệ</a></li>
                     <li><a href="logout-main.php">Đăng xuất</a> <span id="email-display">' . $email . '</span></li>';
} else {
    $menu_content = '<li><a href="home.php">Trang chủ</a></li>
                     <li><a href="travel.php">Địa điểm</a></li>
                     <li><a href="News.php">Tin tức</a></li>
                     <li><a href="contact.php">Liên hệ</a></li>
                     <li><a href="login.php">Đăng nhập</a></li>';
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-...thông tin bảo mật..." crossorigin="anonymous" />
	<style>
		
	</style>
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
	<link rel="stylesheet" href="./css/calenderFlight.css">
	
	<style>
	#email-display {
    font-size: 20px; /* Cỡ chữ */
    margin-left: 10px; /* Khoảng cách với liên kết "Đăng xuất" */
    font-weight: bold; /* In đậm */
	}
label {
    font-weight: normal;
}

.Customer-info-input-text {
    font-weight: normal;
}
	</style>
	
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_2.jpg)">
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
<div class="gtco-section align-center" >
		<div style='width:50% ;margin: 0px auto'>
			<div class="flex-grow flex flex-col gap-16  calendarFlight" style='max-width: 1200px;'>
				<div class="Card-card" style='max-width: 1000px'>
					
			<div class="Card-card-customer" id="customerId1">
					<div class="Customer-info-footer">
						<div class="grid grid-cols-2 gap-24">
							<div class="flex flex-col gap-4">
								BayWithVaa - Dịch vụ vé máy bay và du lịch.
							</div>
						</div>
					</div>
					<div class="Customer-info-header" id="eventDiv">
						<div class="subheading md"><i class="fab fa-wpforms" style="margin-right: 5px;"></i>Điền thông tin</div>
					</div>	
					<div class="Customer-info-content">
						<form method="post" action="xuly-datve.php">
							<div class="Card-card-customer" id="customerId2">
								<?php
								// Khởi tạo biến tổng giá vé
								$totalPrice = 0;

								// Lấy thông tin chuyến bay đã chọn từ session
								if (isset($_SESSION['selectedFlights'])) {
									$selectedFlights = $_SESSION['selectedFlights'];
									echo "<div style='text-align: center;'><i class='fas fa-plane' style='margin-right: 5px;'></i><b style='font-size: 20px;'>Thông tin chuyến bay</b></div>";
									// Hiển thị thông tin về các chuyến bay đã chọn và nút xóa
									foreach ($selectedFlights as $flight) {
										$matuyen = $flight['matuyen'];
										$id_sanbaydi = $flight['id_sanbaydi']; // Lấy ID của sân bay đi
										$id_sanbayden = $flight['id_sanbayden']; // Lấy ID của sân bay đến
										// Thực hiện truy vấn SQL để lấy giá vé từ bảng chuyenbaydi hoặc chuyenbayve
										$sql = "SELECT COALESCE(cbdi.GiaVe, cbve.GiaVe) AS GiaVe
												FROM matuyen mt
												LEFT JOIN chuyenbaydi cbdi ON mt.ID_MaTuyen = cbdi.ID_MaTuyen
												LEFT JOIN chuyenbayve cbve ON mt.ID_MaTuyen = cbve.ID_MaTuyen
												WHERE mt.ID_MaTuyen = '$matuyen'";
										$result = $connect->query($sql);

										if ($result->num_rows > 0) {
											while ($row = $result->fetch_assoc()) {
												// Hiển thị thông tin của chuyến bay và giá vé
												echo "<div>";
												echo "<p><i class='fas fa-globe-asia' style='margin-right: 5px;'></i>Mã tuyến: $matuyen</p>";
												echo "<p><i class='fas fa-plane-arrival' style='margin-right: 5px;'></i>Chuyến bay từ: $id_sanbaydi <span style='color:red; font-size: 20px;'>&rarr;</span> $id_sanbayden</p>";
												echo "<p><i class='fas fa-money-bill-wave' style='margin-right: 5px;'></i>Giá vé: " . number_format($row['GiaVe'], 0, ',', '.') . " VND</p>";
												echo "<hr>";
												echo "</div>";
												
												// Tính tổng giá vé
												$totalPrice += $row['GiaVe'];
											}
										} else {
											echo "Không tìm thấy thông tin cho mã tuyến: $matuyen";
										}
									}
									// Hiển thị tổng giá vé xuống hàng và nằm ở dưới thông tin chuyến bay
									echo "<br>";
									echo "<p><i class='fas fa-shopping-cart' style='margin-right: 5px;'></i><strong>Tổng giá vé: " . number_format($totalPrice, 0, ',', '.') . " VND</strong></p>";
								} else {
									echo "Không có thông tin chuyến bay được chọn.";
								}
								?>
								</div>
					<div class="Customer-info-header" id="eventDiv">
						<div class="subheading md" style="text-align: center;"><i class="fas fa-phone-alt" style="margin-right: 5px;"></i>Thông tin liên hệ</div>
					</div>
				<div class="grid grid-cols-2 gap-24">
					<div class="Customer-info-content">
						<div class="Customer-info-input">
							<label>Giới tính:
								<select name="gioiTinh" class="Customer-info-select">
									<option value="Ông">Ông</option>
									<option value="Bà">Bà</option>
								</select>
							</label>
						</div>
					</div>
					<div class="input-container">
						<label for="hoTen">Họ tên:</label>
						<input type="text" id="hoTen" name="hoTen" class="Customer-info-input-text" placeholder="Nhập họ tên...">
					</div>
					<div class="input-container">
						<label for="email">Email của bạn:</label>
						<input type="text" id="email" name="email" class="Customer-info-input-text" placeholder="Nhập Email...">
					</div>
					<div class="input-container">
						<label for="soDienThoai">Số điện thoại liên lạc:</label>
						<input type="text" id="soDienThoai" name="soDienThoai" class="Customer-info-input-text" placeholder="Nhập số điện thoại...">
					</div>
					<div class="input-container">
						<label for="ngaySinh">Ngày sinh của bạn:</label>
						<input type="date" id="ngaySinh" name="ngaySinh" class="Customer-info-input-text" placeholder="Ngày sinh...">
					</div>
				</div>

				</div>

				<div class="Customer-info-content">
					<div id="passenger-forms">
						<div class="flex flex-col gap-24">
							<div class="flex gap-16 align">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
									<path d="M3 20C5.33579 17.5226 8.50702 16 12 16C15.493 16 18.6642 17.5226 21 20M16.5 7.5C16.5 9.98528 14.4853 12 12 12C9.51472 12 7.5 9.98528 7.5 7.5C7.5 5.01472 9.51472 3 12 3C14.4853 3 16.5 5.01472 16.5 7.5Z" stroke="#101828" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
								</svg>
							</div>
						</div>
						<div class="grid grid-cols-2 gap-16">
								<div class="Customer-info-select-input">
									<div class="relative">
										<b style="font-size: 18px;">Thông tin thêm</b>
									</div>
								</div>
								<label>Địa chỉ nhà:				
									<div class="">
										<input type="text" name="DiaChi" class="Customer-info-input-text" placeholder="Nhập địa chỉ nhà của bạn...">
									</div>
								</label>
								<label>CCCD / CMND:
									<div class="">
										<input type="text" name="CCCD" class="Customer-info-input-text" placeholder="Nhập CCCD của bạn...">
									</div>
								</label>
					   			<label>Số vé người lớn:
									<div class="">
										<input type="number" name="NguoiLon" class="Customer-info-input-text" placeholder="Số vé người lớn...">
									</div>
								</label>
								<label>Số vé trẻ em (từ 6 tuổi đến 16 tuổi):
									<div class="">
										<input type="number" name="TreEm" class="Customer-info-input-text" placeholder="Số vé trẻ em...">
									</div>
								</label>
								<label>Số vé em bé (từ 1 đến 5 tuổi):
									<div class="">
										<input type="number" name="Embe" class="Customer-info-input-text" placeholder="Số vé em bé...">
									</div>
								</label>
							</div>
					</div>
				</div>

				<div class="flex justify-between">
				<button type="button" class="Customer-info-button Button_button Button-button-normal" id="backButton" style="border-radius: 100px; box-shadow: var(--shadow-xs); gap:8px; font-weight: bold;">Quay lại</button>
				<button type="submit" class="Customer-info-button Button_button Button-button-normal" style="border-radius: 100px; box-shadow: var(--shadow-xs); gap:8px; font-weight: bold;">Đặt vé</button>
				</div>
			</form>
			</div>
		</div>
		</div>
		</div>
	</div>
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
	</body>
</html>

