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
    font-size: 20px; 
    margin-left: 10px; 
    font-weight: bold; 
	}	
.news-detail-container {
    text-align: center;
}

.news-detail-container .content {
    display: inline-block;
    text-align: left;
    max-width: 1500px; /* Điều chỉnh kích thước tối đa của nội dung */
}

.news-detail-container img {
    max-width: 50%;
    height: auto;
	margin-left: 350px;
}

.news-detail-container .date {
    font-style: italic;
}

.news-detail-container .description {
    text-align: justify; /* Justify mô tả */
}
.random-posts-container {
    display: flex;
    justify-content: space-between;
}
.random-post {
    width: 23%; /* Để lại một chút khoảng cách giữa các bài viết */
    border: 1px solid #ccc; /* Thêm đường viền */
    border-radius: 10px; /* Bo tròn góc */
    text-align: center;
    padding: 20px; /* Thêm padding cho phần nội dung */
}

.random-post img {
    display: block;
    margin: 0 auto; /* Để hình ảnh nằm giữa */
    border-radius: 10px;
    max-width: 100%;
}

.random-post h3 {
    margin-top: 10px;
}

.random-post .description {
    margin-top: 5px;
}

.random-post .read-more {
    display: block;
    margin-top: 15px;
    text-decoration: none;
    color: #333;
    font-weight: bold;
}
.random-post .read-more {
    display: inline-block;
    margin-top: 15px;
    text-decoration: none;
    color: #333;
    font-weight: bold;
    padding: 8px 20px;
    border-radius: 5px;
    border: 2px solid #ff69b4; /* Màu đường viền */
    transition: background-color 0.3s, color 0.3s; /* Hiệu ứng chuyển đổi màu */
	background-color: deeppink;
}

.random-post .read-more:hover {
    background-color: hotpink; /* Màu nền khi hover */
    color: #fff; /* Màu chữ khi hover */
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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/Hueimg.png)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">

						<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>Tin tức</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
<div class="news-detail-container">
    <?php
    include ('db.php');

    // Kiểm tra xem ID bài viết được truyền qua URL hay không
    if(isset($_GET['id'])) {
        $id_news = $_GET['id'];

        // Truy vấn cơ sở dữ liệu để lấy thông tin chi tiết của bài viết
        $sql_detail = "SELECT * FROM baiviet WHERE ID_News = $id_news AND AnHien = 1";
        $result_detail = $connect->query($sql_detail);

        // Kiểm tra xem có dữ liệu trả về không
        if ($result_detail->num_rows > 0) {
            // Hiển thị thông tin chi tiết của bài viết
            while($row_detail = $result_detail->fetch_assoc()) {
                echo "<h2>" . $row_detail['TieuDe'] . "</h2>";
                echo "<div class='content'>";
				echo "<p class='date'>" . date('d-m-Y', strtotime($row_detail['NgayDang'])) . "</p>";
                echo "<img src='/BayWithVaa/img/" . $row_detail['AnhBaiViet'] . "' alt='Ảnh bài viết' style='border-radius: 10px;'>";
				echo '<hr>';
                echo "<p class='description'>" . $row_detail['MoTa'] . "</p>";
                echo "</div>";
            }
        } else {
            echo "Không tìm thấy bài viết.";
        }
    } else {
        echo "ID bài viết không được cung cấp.";
    }

    ?>
	<hr>
	<h2 style="text-align: center;">Có thể bạn sẽ quan tâm</h2>
<?php
include ('db.php');

// Truy vấn cơ sở dữ liệu để lấy ra 4 bài viết ngẫu nhiên
$sql_random_posts = "SELECT * FROM baiviet WHERE AnHien = 1 ORDER BY RAND() LIMIT 4";
$result_random_posts = $connect->query($sql_random_posts);

// Kiểm tra xem có dữ liệu trả về không
if ($result_random_posts->num_rows > 0) {
    // Hiển thị 4 bài viết ngẫu nhiên
    echo '<div class="random-posts-container">';
    while($row_random_post = $result_random_posts->fetch_assoc()) {
		echo '<div class="random-post">';
		echo '<img src="/BayWithVaa/img/' . $row_random_post['AnhBaiViet'] . '" alt="Ảnh bài viết">';
		echo '<h3>' . $row_random_post['TieuDe'] . '</h3>';
		echo '<a href="newsdetail.php?id=' . $row_random_post['ID_News'] . '" class="read-more">Xem chi tiết</a>'; // Thêm thẻ "Xem chi tiết"
		echo '</div>';
    }
    echo '</div>'; // Kết thúc random-posts-container
} else {
    echo "Không có bài viết ngẫu nhiên để hiển thị.";
}
?>
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

