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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-...thông tin bảo mật..." crossorigin="anonymous" />
		
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

	    <link rel="stylesheet" href="css/style4.css">
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
table {
    border-collapse: collapse;
    width: 60%; /* Điều chỉnh chiều rộng của bảng */
    margin: 0 auto; /* Để căn giữa bảng */
    border-radius: 10px; /* Độ cong của góc */
    overflow: hidden; /* Đảm bảo nội dung bảng không bị tràn ra ngoài */
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #f2f2f2; /* Màu nền của hàng tiêu đề */
}

/* Định dạng lại hàng tiêu đề */
th[colspan="2"] {
    text-align: center;
}
	
#thongtinForm {
    width: 900px; /* Đặt chiều rộng của bảng */
    float: left; /* Đặt bảng ở vị trí bên trái */
    margin-right: 20px; /* Khoảng cách với phần còn lại của trang */
    border-collapse: collapse; /* Gộp các đường viền */
	margin-left: 10px;
	border: 2px solid #ddd;
}

#thongtinForm th,
#thongtinForm td {
    padding: 8px; /* Khoảng cách giữa nội dung và đường viền */
    border: 1px solid #ddd; /* Đường viền */
    border-radius: 5px; /* Bo tròn góc */
}

#thongtinForm input,
#thongtinForm select {
    width: calc(100% - 16px); /* Chiều rộng của input và select */
    padding: 5px; /* Khoảng cách giữa nội dung và viền trong */
    border-radius: 20px; /* Bo tròn góc */
    border: 1px solid #ccc; /* Đường viền */
}

#thongtinForm select {
    padding: 7px; /* Khoảng cách giữa nội dung và viền trong */
}
.form-container {
    display: flex;
    justify-content: space-between;
}

#thongtinForm {
    width: calc(60% - 20px); /* Điều chỉnh chiều rộng của bảng nhập thông tin */
}

#servicePaymentContainer {
    width: calc(40% - 20px); /* Điều chỉnh chiều rộng của div dịch vụ và thanh toán */
}
#servicePaymentContainer {
    border-radius: 5px; /* Bo tròn góc cho khung */
    border: 1px solid #ccc; /* Đường viền */
    padding: 15px; /* Khoảng cách nội dung với khung */
    background-color: #f9f9f9; /* Màu nền */
}

#servicePaymentContainer select,
#servicePaymentContainer textarea {
    width: calc(100% - 22px); /* Độ rộng của dropdown và textarea */
    padding: 8px; /* Khoảng cách nội dung với viền trong */
    border-radius: 10px; /* Bo tròn góc cho dropdown và textarea */
    border: 1px solid #ccc; /* Đường viền */
    margin-bottom: 8px; /* Khoảng cách giữa các trường */
    font-size: 14px; /* Kích thước chữ cho các trường nhập */
    background-color: #fff; /* Màu nền */
}

#servicePaymentContainer label {
    margin-bottom: 5px; /* Khoảng cách giữa label và trường nhập */
    display: block; /* Hiển thị label theo dòng */
    font-size: 14px; /* Kích thước chữ cho label */
    color: #333; /* Màu chữ cho label */
}
button[type="submit"] {
    background-color: orangered; /* Màu nền của nút */
    color: white; /* Màu chữ */
    padding: 10px 20px; /* Kích thước padding */
    border: none; /* Không có đường viền */
    border-radius: 5px; /* Bo tròn góc */
    cursor: pointer; /* Hiển thị icon con trỏ khi di chuột vào nút */
    transition: background-color 0.3s; /* Hiệu ứng chuyển đổi màu nền */
}

button[type="submit"]:hover {
    background-color: orange; /* Màu nền khi di chuột vào nút */
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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/maybaymoi.png)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">

						<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>Thanh toán Chuyến bay</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
    <form method="post" action="xuly-chuyenbay.php">
<table border="1">
    <tr>
        <th colspan="2"><i class="fas fa-user-alt" style="margin-right: 10px;"></i>Thông tin liên hệ</th>
    </tr>
    <?php
    include ('db.php');
    
    // Khởi tạo biến tổng tiền và tổng số vé
    $tongSoVe = 0;
    $tongTien = 0;
    $tongSoVeNguoiLon = intval($_SESSION['soVeNguoiLon']);
    $tongSoVeTreEm = intval($_SESSION['soVeTreEm']);
    $tongSoVeEmBe = intval($_SESSION['soVeEmBe']);

    // Kiểm tra nếu có dữ liệu trong session
    if (!empty($_SESSION)) {
        echo "<tr><td style='width: 20%;'>Giới tính:</td><td>" . $_SESSION['gioiTinh'] . "</td></tr>";
        echo "<tr><td>Họ và tên:</td><td>" . $_SESSION['hoTen'] . "</td></tr>";
        echo "<tr><td>Email:</td><td>" . $_SESSION['email'] . "</td></tr>";
        echo "<tr><td>Số điện thoại:</td><td>" . $_SESSION['soDienThoai'] . "</td></tr>";
        echo "<tr><td>Ngày sinh:</td><td>" . date('d-m-Y', strtotime($_SESSION['ngaySinh'])) . "</td></tr>";
        echo "<tr><td>Địa chỉ:</td><td>" . $_SESSION['diaChi'] . "</td></tr>";
        echo "<tr><td>Căn cước / chứng minh nhân dân:</td><td>" . $_SESSION['CCCD'] . "</td></tr>";              
		echo "<tr><th colspan='2'><i class='fas fa-plane-departure' style='margin-right: 10px;'></i>Chuyến bay</th></tr>";
        // Hiển thị thông tin về vé đã chọn và tính tổng giá vé
        foreach ($_SESSION['selectedFlights'] as $flight) {
				$matuyen = $flight['matuyen'];
				$id_sanbaydi = $flight['id_sanbaydi']; // Lấy ID của sân bay đi
				$id_sanbayden = $flight['id_sanbayden']; // Lấy ID của sân bay đến
            $sql = "SELECT COALESCE(cbdi.GiaVe, cbve.GiaVe) AS GiaVe
                    FROM matuyen mt
                    LEFT JOIN chuyenbaydi cbdi ON mt.ID_MaTuyen = cbdi.ID_MaTuyen
                    LEFT JOIN chuyenbayve cbve ON mt.ID_MaTuyen = cbve.ID_MaTuyen
                    WHERE mt.ID_MaTuyen = '$matuyen'";
            $result = $connect->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr><td>Mã tuyến:</td><td>$matuyen</td></tr>";
                    echo "<tr><td>Giá vé:</td><td>" . number_format($row['GiaVe'], 0, ',', '.') . " VND</td></tr>";
					echo "<tr><td>Chuyến bay từ:</td><td>$id_sanbaydi <span style='color:red; font-size: 20px;'>&rarr;</span> $id_sanbayden</td></tr>";
                    // Tính tổng giá vé
                    $giaVe = $row['GiaVe'];
                    $tongTien += $giaVe;
                }
            } else {
                echo "<tr><td colspan='2'>Không tìm thấy thông tin cho mã tuyến: $matuyen</td></tr>";
            }
        }

        // Tính tổng số vé và áp dụng giảm giá cho vé trẻ em và em bé
        $tongSoVe = $tongSoVeNguoiLon + $tongSoVeTreEm + $tongSoVeEmBe;
		$_SESSION['tongSoVe'] = $tongSoVe;
		
        $tongTien = $tongTien * $tongSoVe;

        // Áp dụng giảm giá cho vé trẻ em (20%) và em bé (50%)
        $tongTien -= $giaVe * $tongSoVeTreEm * 0.2; // Giảm 20% cho vé trẻ em
        $tongTien -= $giaVe * $tongSoVeEmBe * 0.5; // Giảm 50% cho vé em bé
        
        $_SESSION['tongTien'] = $tongTien;
        
        echo "<tr><th colspan='2'><i class='fas fa-receipt' style='margin-right: 10px;'></i>Tổng số vé và tổng tiền vé</th></tr>";
        echo "<tr><td>Tổng số vé:</td><td>$tongSoVe</td></tr>";
        echo "<tr><td>Tổng tiền vé:</td><td>" . number_format($tongTien, 0, ',', '.') . " VND</td></tr>";

    } else {
        echo "<tr><td colspan='2'>Không có thông tin được lưu trong session.</td></tr>";
    }
					// Hiển thị thông tin về vé đã chọn và tính tổng giá vé
		if (!empty($_SESSION['selected_seats'])) {
			echo "<tr><th colspan='2'><i class='fas fa-couch' style='margin-right: 10px;'></i>Thông tin ghế đã chọn</th></tr>";
			echo "<tr><td colspan='2' class='selected-seats' style='color: red; font-weight:bold; font-size: 20px;'>" . 'Ghế: ' . implode(", ", $_SESSION['selected_seats']) . "</td></tr>";
		} else {
			echo "<tr><td colspan='2'>Không có ghế nào được chọn.</td></tr>";
		}
    ?>
</table>
		
<hr>
	<h4 style="margin-left: 10px; text-decoration: underline;"><i class="fas fa-user-edit" style="margin-right: 5px;"></i>Nhập thông tin:</h4>
<div class="form-container">
<table border="1" id="thongtinForm">
    <tr>
		<th style="width: 12%; text-align: center;">Khách hàng</th>
        <th style="text-align: center;">Họ và tên</th>
        <th style="text-align: center;">Ngày sinh</th>
        <th style="width: 15%;">Độ tuổi</th>
    </tr>

    <?php
    // Số lượng người lớn, trẻ em và em bé từ session
    $soVeNguoiLon = intval($_SESSION['soVeNguoiLon']);
    $soVeTreEm = intval($_SESSION['soVeTreEm']);
    $soVeEmBe = intval($_SESSION['soVeEmBe']);

    // Hiển thị form cho người lớn
    for ($i = 1; $i <= $soVeNguoiLon; $i++) {
        echo "<tr>";
		echo "<td>Người lớn</td>";
        echo "<td><input type='text' name='hoTenNguoiLon[$i]' required></td>";
        echo "<td><input type='date' name='ngaySinhNguoiLon[$i]' required></td>";
        echo "<td><select name='doTuoiNguoiLon[$i]'>";
        echo "<option value='Người lớn'>Người lớn</option>";
        echo "<option value='Trẻ em'>Trẻ em</option>";
        echo "<option value='Em bé'>Em bé</option>";
        echo "</select></td>";
        echo "</tr>";
    }

    // Hiển thị form cho trẻ em
    for ($i = 1; $i <= $soVeTreEm; $i++) {
        echo "<tr>";
		echo "<td>Trẻ em</td>";
        echo "<td><input type='text' name='hoTenTreEm[$i]' required></td>";
        echo "<td><input type='date' name='ngaySinhTreEm[$i]' required></td>";
        echo "<td><select name='doTuoiTreEm[$i]'>";
        echo "<option value='Người lớn'>Người lớn</option>";
        echo "<option value='Trẻ em' selected>Trẻ em</option>";
        echo "<option value='Em bé'>Em bé</option>";
        echo "</select></td>";
        echo "</tr>";
    }

    // Hiển thị form cho em bé
    for ($i = 1; $i <= $soVeEmBe; $i++) {
        echo "<tr>";
		echo "<td>Em bé</td>";
        echo "<td><input type='text' name='hoTenEmBe[$i]' required></td>";
        echo "<td><input type='date' name='ngaySinhEmBe[$i]' required></td>";
        echo "<td><select name='doTuoiEmBe[$i]'>";
        echo "<option value='Người lớn'>Người lớn</option>";
        echo "<option value='Trẻ em'>Trẻ em</option>";
        echo "<option value='Em bé' selected>Em bé</option>";
        echo "</select></td>";
        echo "</tr>";
    }
    ?>
</table>
        <br>
		<div id="servicePaymentContainer" style="margin-right: 10px;">
		<div id="dichVuList">
			<label for="dichVu"><i class="fas fa-thumbs-up" style="margin-right: 5px;"></i><b>Dịch vụ (nếu muốn):</b></label>
			<select name="dichVu" id="dichVu" onchange="showDescription()">
				<?php
				include('db.php');

				// Truy vấn để lấy toàn bộ dịch vụ từ bảng dichvu
				$sql = "SELECT * FROM dichvu";
				$result = $connect->query($sql);

				// Kiểm tra nếu có ít nhất một dịch vụ
				if ($result->num_rows > 0) {
					// Hiển thị danh sách dịch vụ trong dropdown
					while ($row = $result->fetch_assoc()) {
						echo "<option value='" . $row['ID_DichVu'] . "'>" . $row['TenDichVu'] . "</option>";
					}
				} else {
					echo "<option value=''>Không có dịch vụ nào</option>";
				}
				?>
			</select>
		</div>
		<div id="moTaDichVu"></div>
		<br>
        <label for="payment"><i class="fas fa-credit-card" style="margin-right: 5px;"></i><b>Lựa chọn thanh toán:</b></label>
        <select name="payment" id="payment">
            <option value="MoMo">MoMo(015648945)</option>
            <option value="MBBank">MB Bank(99162456)</option>
            <option value="VnPay">VNPAY(026459488)</option>
            <!-- Thêm các phương thức thanh toán khác nếu cần -->
        </select>
        <br>
        <label for="note"><i class="fas fa-comment-dots" style="margin-right: 5px;"></i><b>Ghi chú:</b></label>
        <textarea name="note" id="note" rows="4" cols="50" placeholder="Nhập ghi chú nếu có..."></textarea>
		</div>
		</div>
        <br>
		<hr>
        <button type="submit" style="float: right; margin-right: 10px; width: 10%; font-weight: bold; border-radius: 20px;">Hoàn tất</button>
    </form>	
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
	function expandImage(img) {
  var expandedImage = document.getElementById("expandedImage");
  var expandedImg = document.getElementById("expandedImg");
  expandedImg.src = img.src;
  expandedImage.style.display = "block";

  var closeBtn = document.getElementById("closeBtn");
  closeBtn.onclick = function() {
    expandedImage.style.display = "none";
  }
}	
	</script>
	</body>
</html>

