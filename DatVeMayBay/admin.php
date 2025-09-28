<?php
include 'db.php';
?>
<?php
session_start();

// Kiểm tra xem người dùng đã đăng nhập chưa
if(!isset($_SESSION['admin_email'])) {
    // Nếu chưa, chuyển hướng về trang đăng nhập
    header("Location: /BayWithVaa/login.php");
    exit();
} else {
    // Nếu đã đăng nhập, lấy email của người dùng từ session
    $admin_email = $_SESSION['admin_email'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
	<script src="script.js"></script>
    <title>Admin Page</title>
	<style>
	#ten {
    font-size: 20px; /* Kích thước font */
    font-weight: bold; /* Trọng lượng font */
    padding: 20px; /* Khoảng cách văn bản */
	color: white;
}
	#logout-btn {
    display: inline-block;
    padding: 8px 16px;
    background-color: #f44336; /* Màu nền */
    color: white; /* Màu chữ */
    border: none;
    border-radius: 4px;
    cursor: pointer;
    text-decoration: none; /* Loại bỏ gạch chân cho liên kết */
}

#logout-btn:hover {
    background-color: #cc0000; /* Màu nền khi di chuột qua */
}
.artistic-text span {
    font-size: 37px;
    font-family: 'Arial', sans-serif;
    display: inline-block;
    transform: rotate(-10deg);
    margin-right: 5px;
    animation: neon 1.5s infinite alternate;
    background-image: linear-gradient(to right, #ff0000, #00ff00);
    -webkit-background-clip: text;
    color: transparent;
}

@keyframes neon {
    0% { text-shadow: 0 0 5px #fff, 0 0 10px #ff00ff, 0 0 20px #ff00ff; }
    50% { text-shadow: 0 0 20px #ff00ff, 0 0 30px #ff00ff, 0 0 40px #ff00ff; }
    100% { text-shadow: 0 0 5px #fff, 0 0 10px #ff00ff, 0 0 20px #ff00ff; }
}
.fancy-text {
    font-family: 'Great Vibes', cursive; /* Sử dụng font Great Vibes */
    font-size: 36px;
    color: #ff69b4;
    text-transform: uppercase;
    position: relative;
    display: inline-block;
}

.fancy-text span {
    position: relative;
    display: inline-block;
    animation: float 3s infinite, color-change 5s infinite alternate;
}

@keyframes float {
    0%, 100% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-20px);
    }
}

@keyframes color-change {
    0% {
        color: green;
    }
    50% {
        color: yellow;
    }
    100% {
        color: blue;
    }
}

.fancy-text span:nth-child(odd) {
    animation-duration: 2s;
}

.fancy-text span:nth-child(even) {
    animation-duration: 2.5s;
}


	</style>
</head>
<body>	
	
    <div id="container">

        <div id="sidebar" style=" height: 120%; overflow: auto;">
            <!-- Thanh điều hướng admin -->
            <ul>
                <li><i class="fas fa-user"></i><a href="#home" onclick="loadContent('home.php')">Home</a></li>
                <li><i class="fas fa-book"></i><a href="#baiviet" onclick="toggleNestedContent('nested-baiviet')">Bài viết<i class="fas fa-level-down-alt" style="margin-left: 10px;"></i></a></li>
                <ul class="nested-content" id="nested-baiviet">
                    <li style="margin-left: 20px;" onclick="displayAddBaivietForm();"><i class="fas fa-plus"></i><a href="#thembaiviet">Thêm Bài Viết</a></li>
                    <li style="margin-left: 20px;"><i class="fas fa-eye"></i><a href="#xemxetbaiviet" onclick="fetchXemXetBaivietData();">Xem Xét Bài Viết</a></li>
					<li style="margin-left: 20px;"><i class="fas fa-list"></i><a href="#themtheloai" onclick="fetchTheloaiData();">Thêm Thể Loại</a></li>
                </ul>
                <li><i class="fas fa-map"></i><a href="#tourduthuyen" onclick="toggleNestedContent('nested-tourduthuyen')">Tour Du Lịch<i class="fas fa-level-down-alt" style="margin-left: 10px;"></i></a></li>
				<ul class="nested-content" id="nested-tourduthuyen">
					<li style="margin-left: 20px;" onclick="loadAddTourForm();"><i class="fas fa-plus"></i><a href="#themTour">Thêm Tour</a></li>
					<li style="margin-left: 20px;" onclick="loadTourForm(); "><i class="fas fa-eye"></i><a href="#CacTourdulich">Các Tour Du Lịch</a></li>
				</ul>
				<li><i class="fas fa-fighter-jet"></i><a href="#flight" onclick="toggleFlights()">Chuyến bay<i class="fas fa-level-down-alt" style="margin-left: 10px;"></i></a></li>
				<ul class="nested-flight" id="nested-flight" style="display: none;">
				<li><i class="fas fa-plus" style="margin-left: 20px;"></i><a href="#addflight" onclick="addFlights('add-flight.php')">Thêm Chuyến Bay</a></li>
				<li><i class="fas fa-plane" style="margin-left: 20px;"></i><a href="#cacchuyenbay" onclick="showFlights()">Các Chuyến Bay</a></li>
				</ul>
                <li><i class="fas fa-shopping-cart"></i><a href="#donhang" onclick="toggleCart()">Đơn Hàng<i class="fas fa-level-down-alt" style="margin-left: 10px;"></i></a></li>
					<ul class="nested-content" id="nested-cart">
						<li style="margin-left: 20px;" onclick="loadAddFlightOne('flight-one-trip.php');"><i class="fas fa-plane-departure"></i><a href="#donhangbay">Đơn chuyến bay (1 chiều)</a></li>
						<li style="margin-left: 20px;" onclick="loadAddFlightTwo('flight-round-trip.php');"><i class="fas fa-plane-arrival"></i><a href="#donhangbay2">Đơn chuyến bay (khứ hồi)</a></li>
						<li style="margin-left: 20px;" onclick="loadAddTravel('tour-travel.php');"><i class="fas fa-globe-asia"></i><a href="#donhangtou">Đơn tour du lịch</a></li>
					</ul>
				<li><i class="fas fa-comment"></i><a href="#binhluan" onclick="toggleCommentContent()">Bình Luận<i class="fas fa-level-down-alt" style="margin-left: 10px;"></i></a></li>
				<ul class="nested-content" id="nested-news" style="display: none;">
				  <li style="margin-left: 20px;" onclick="loadCommentTour('comment-tour.php');"><i class="fas fa-suitcase-rolling"></i><a href="#checkTour">Tour Du Lịch</a></li>
				</ul>
                <li><i class="fas fa-phone-alt"></i><a href="#lienhe" onclick="loadContract('contract-form.php')">Liên Hệ</a></li>
				<li><i class="fas fa-users"></i><a href="#tour-guide" onclick="loadGuide('tour-guide.php')">Hướng dẫn viên</a></li>
            </ul>
		<div class="artistic-text" style="margin-top: 30px;">
			<span>B</span><span>a</span><span>y</span><span>W</span><span>i</span><span>t</span><span>h</span><span>V</span><span>a</span><span>a</span>
		</div>
        </div>
        <div id="main-content">
				<div id="horizontal-bar"> 
					
					<a href="/BayWithVaa/logout.php" id="logout-btn"  style="float:right;"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a>
					<?php
					if(isset($_SESSION['admin_email'])) {
						$admin_email = $_SESSION['admin_email'];
						echo '<div id="ten">Xin chào, ' . $admin_email . '</div>';
					}
					?>
			</div>
			<div class="fancy-text">
					<span>H</span><span>ã</span><span>y</span> <span>t</span><span>h</span><span>e</span><span>o</span> <span>đ</span><span>u</span><span>ổ</span><span>i</span> <span>ướ</span><span>c</span> <span>m</span><span>ơ</span> <span>c</span><span>ủa</span> <span>c</span><span>h</span><span>í</span><span>nh</span> <span>b</span><span>ạ</span><span>n</span><span>✈️</span><span>✈️</span><span>✈️</span><span>✈️</span><span>✈️</span>
			</div>
			<div id="content-container">
				<!-- Hiển thị thông tin-->
			</div>	
    	</div>
	</div>
	<script>
		
    function fetchTheloaiData() {
        // Sử dụng fetch để gửi yêu cầu đến update-theloai.php
        fetch('update-theloai.php')
            .then(response => response.text())
            .then(data => {
                // Hiển thị dữ liệu trong content-container
                displayTheloaiData(data);
            })
            .catch(error => console.error('Error fetching theloai data:', error));
    }

    function displayTheloaiData(data) {
        // Lấy reference đến content-container
        var contentContainer = document.getElementById('content-container');

        // Hiển thị dữ liệu trong content-container
        contentContainer.innerHTML = data;
    }
function displayAddBaivietForm() {
    // Sử dụng fetch để gửi yêu cầu đến add-baiviet-form.php
    fetch('add-baiviet-form.php')
        .then(response => response.text())
        .then(data => {	
            // Hiển thị dữ liệu trong content-container
            var contentContainer = document.getElementById('content-container');
            contentContainer.innerHTML = data;
        })
        .catch(error => console.error('Error fetching add-baiviet-form data:', error));
}
function fetchXemXetBaivietData() {
            // Sử dụng fetch để gửi yêu cầu đến xem-xet-baiviet.php
            fetch('xem-xet-baiviet.php')
                .then(response => response.text())
                .then(data => {    
                    // Hiển thị dữ liệu trong content-container
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error fetching xem-xet-baiviet data:', error));
        }
</script>
<!-- Thêm hàm JavaScript để gửi yêu cầu và hiển thị danh sách chuyến bay -->
<script>
function fetchChuyenBayData(page) {
    fetch('flights.php?page=' + page)
        .then(response => response.text())
        .then(data => {
            var contentContainer = document.getElementById('content-container');
            contentContainer.innerHTML = data;
        })
        .catch(error => console.error('Error fetching flights data:', error));
}

// Gọi hàm này khi chọn mục "Các chuyến bay"
function showFlights() {
    fetchChuyenBayData(1); // Hiển thị trang 1 ban đầu
}
</script>
<script>
    function fetchTourData(page) {
        fetch('tour-du-lich.php?page=' + page)
            .then(response => response.text())
            .then(data => {
                var contentContainer = document.getElementById('content-container');
                contentContainer.innerHTML = data;
            })
            .catch(error => console.error('Error fetching tour-du-lich data:', error));
    }

    // Gọi hàm này khi chọn mục "Các chuyến bay"
    function fetchTour() {
        fetchTourData(1); // Hiển thị trang 1 ban đầu
    }
</script>
<script>
    function fetchRoundTrip(page) {
        fetch('flight-round-trip.php?page=' + page)
            .then(response => response.text())
            .then(data => {
                var contentContainer = document.getElementById('content-container');
                contentContainer.innerHTML = data;
            })
            .catch(error => console.error('Error fetching flight-round-trip data:', error));
    }

    // Gọi hàm này khi chọn mục "Các chuyến bay"
    function fetchRound() {
        fetchRoundTrip(1); // Hiển thị trang 1 ban đầu
    }
</script>
<script>
    function fetchOneTrip(page) {
        fetch('flight-one-trip.php?page=' + page)
            .then(response => response.text())
            .then(data => {
                var contentContainer = document.getElementById('content-container');
                contentContainer.innerHTML = data;
            })
            .catch(error => console.error('Error fetching flight-one-trip data:', error));
    }

    // Gọi hàm này khi chọn mục "Các chuyến bay"
    function fetchOne() {
        fetchOneTrip(1); // Hiển thị trang 1 ban đầu
    }
</script>
<script>
    function fetchNewsData(page) {
        fetch('xem-xet-baiviet.php?page=' + page)
            .then(response => response.text())
            .then(data => {
                var contentContainer = document.getElementById('content-container');
                contentContainer.innerHTML = data;
            })
            .catch(error => console.error('Error fetching xem-xet-baiviet data:', error));
    }

    // Gọi hàm này khi chọn mục "Các chuyến bay"
    function fetchNews() {
        fetchNewsData(1); // Hiển thị trang 1 ban đầu
    }
</script>
	
<script>
    function fetchContractData(page) {
        fetch('contract-form.php?page=' + page)
            .then(response => response.text())
            .then(data => {
                var contentContainer = document.getElementById('content-container');
                contentContainer.innerHTML = data;
            })
            .catch(error => console.error('Error fetching contract-form data:', error));
    }

    function fetchContract() {
        fetchContractData(1); // Hiển thị trang 1 ban đầu
    }
</script>
<script>
    function fetchTravel(page) {
        fetch('tour-travel.php?page=' + page)
            .then(response => response.text())
            .then(data => {
                var contentContainer = document.getElementById('content-container');
                contentContainer.innerHTML = data;
            })
            .catch(error => console.error('Error fetching tour-travel data:', error));
    }

    function fetchtravel() {
        fetchTravel(1); // Hiển thị trang 1 ban đầu
    }
</script>
<script>
    function fetchCommentTourData(page) {
        fetch('comment-tour.php?page=' + page)
            .then(response => response.text())
            .then(data => {
                var contentContainer = document.getElementById('content-container');
                contentContainer.innerHTML = data;
            })
            .catch(error => console.error('Error fetching comment-tour data:', error));
    }

    function fetchCommentTour() {
        fetchCommentTourData(1); // Hiển thị trang 1 ban đầu
    }
</script>	

<script>
        function loadAddTourForm() {
            // Sử dụng fetch để gửi yêu cầu đến add-tour.php
            fetch('add-tours-form.php')
                .then(response => response.text())
                .then(data => {
                    // Hiển thị dữ liệu trong content-container
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error fetching add-tour-form data:', error));
        }
</script>
<script>
        function loadTourForm() {
            // Sử dụng fetch để gửi yêu cầu đến add-tour.php
            fetch('tour-du-lich.php')
                .then(response => response.text())
                .then(data => {
                    // Hiển thị dữ liệu trong content-container
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error fetching add-tour-form data:', error));
        }
</script>
<script>
        function loadContent(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
        function loadContract(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
        function loadGuide(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
        function loadCommentTour(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
        function addFlights(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
        function loadAddFlightOne(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
        function loadAddFlightTwo(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
        function loadAddTravel(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    var contentContainer = document.getElementById('content-container');
                    contentContainer.innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
</script>
<script>
function toggleCommentContent() {
  var nestedContent = document.getElementById("nested-news");
  if (nestedContent.style.display === "none") {
    nestedContent.style.display = "block";
  } else {
    nestedContent.style.display = "none";
  }
}	
</script>
<script>
function toggleFlights() {
  var nestedContent = document.getElementById("nested-flight");
  if (nestedContent.style.display === "none") {
    nestedContent.style.display = "block";
  } else {
    nestedContent.style.display = "none";
  }
}	
</script>
<script>
function toggleCart() {
  var nestedContent = document.getElementById("nested-cart");
  if (nestedContent.style.display === "none") {
    nestedContent.style.display = "block";
  } else {
    nestedContent.style.display = "none";
  }
}	
</script>
</body>
</html>
