<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin tìm kiếm</title>
    <link rel="stylesheet" href="style6.css">
	<style>
	#pagination, #pagination2 {
    margin-top: 20px;
    text-align: center;
}

#pagination button, #pagination2 button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
}

#pagination button:hover, #pagination2 button:hover {
    background-color: #45a049;
}
	</style>
</head>
<body>
    <?php
    // Include file kết nối database
    include 'db.php';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Xử lý dữ liệu form
        $noidi = $_POST['noidi'];
        $noiden = $_POST['noiden'];
        $ngay = $_POST['ngay'];
        $loaibay = $_POST['loaibay'];
        $ngayve = $_POST['ngayve'];

        if ($loaibay == '1') {
            // Truy vấn bình thường cho loại bay 1
            $sqlNgayDi = "SELECT * FROM matuyen WHERE ID_SanBayDi = '$noidi' AND ID_SanBayDen = '$noiden' AND ThoiGian = '$ngay' AND ID_LoaiBay = '$loaibay'";
        } elseif ($loaibay == '2' && !empty($ngayve)) {
            // Truy vấn cho loại bay 2 khi có ngày về
            $sqlNgayDi = "SELECT * FROM matuyen WHERE ID_SanBayDi = '$noidi' AND ID_SanBayDen = '$noiden' AND ThoiGian = '$ngay' AND ID_LoaiBay = '$loaibay'";
            $sqlNgayVe = "SELECT * FROM matuyen WHERE ID_SanBayDi = '$noiden' AND ID_SanBayDen = '$noidi' AND ThoiGian = '$ngayve' AND ID_LoaiBay = '$loaibay'";
        } else {
            echo "Vui lòng chọn cả ngày đi và ngày về.";
            exit; // Kết thúc quá trình xử lý nếu không có ngày về được cung cấp
        }

        $resultNgayDi = $connect->query($sqlNgayDi);
        $resultNgayVe = isset($sqlNgayVe) ? $connect->query($sqlNgayVe) : null;

        echo "<div id='chuyenbay_results_ngaydi'>";
        if ($resultNgayDi->num_rows > 0) {
               echo "<h3 style='margin-left: 20px; color: blue;'>Chuyến đi của ngày $ngay</h3>";
            // Hiển thị thông tin các chuyến bay tìm được từ bảng matuyen cho ngày đi
            while ($row = $resultNgayDi->fetch_assoc()) {
                echo "<div style='border: 1px solid #000; padding: 10px; margin-bottom: 10px;'>";
                echo "<strong>Mã tuyến:</strong> " . $row['ID_MaTuyen'] . "<br>";
                echo "<strong>Sân bay đi:</strong> " . $row['ID_SanBayDi'] . "<br>";
                echo "<strong>Sân bay đến:</strong> " . $row['ID_SanBayDen'] . "<br>";
                echo "<strong>Loại bay:</strong> " . $row['ID_LoaiBay'] . "<br>";
                echo "<strong>Khoảng cách:</strong> " . $row['KhoangCach'] . "<br>";
                echo "<strong>Thời gian:</strong> " . date('d-m-Y', strtotime($row['ThoiGian'])) . "<br>";
                echo "<button class='btnXemThem' data-idmatuyen='" . $row['ID_MaTuyen'] . "'>Xem thêm</button>";
                echo "<div class='divThongTin'></div>";
                echo "</div>";
            }
            echo "<div id='pagination'></div>";
        }
        else {
            echo "Không có chuyến bay phù hợp cho ngày đi.";
        }
        echo "</div>";

        echo "<div id='chuyenbay_results_ngayve'>";
        if ($resultNgayVe && $resultNgayVe->num_rows > 0) {
            echo "<h3 style='margin-left: 20px; color: blue;'>Chuyến về của ngày $ngayve</h3>";
            // Hiển thị thông tin các chuyến bay tìm được từ bảng matuyen cho ngày về
            while ($row = $resultNgayVe->fetch_assoc()) {
                echo "<div style='border: 1px solid #000; padding: 10px; margin-bottom: 10px;'>";
                echo "<strong>Mã tuyến:</strong> " . $row['ID_MaTuyen'] . "<br>";
                echo "<strong>Sân bay đi:</strong> " . $row['ID_SanBayDi'] . "<br>";
                echo "<strong>Sân bay đến:</strong> " . $row['ID_SanBayDen'] . "<br>";
                echo "<strong>Loại bay:</strong> " . $row['ID_LoaiBay'] . "<br>";
                echo "<strong>Khoảng cách:</strong> " . $row['KhoangCach'] . "<br>";
                echo "<strong>Thời gian:</strong> " . date('d-m-Y', strtotime($row['ThoiGian'])) . "<br>";
                echo "<button class='btnXemThem' data-idmatuyen='" . $row['ID_MaTuyen'] . "'>Xem thêm</button>";
                echo "<div class='divThongTin'></div>";
                echo "</div>";
            }
            echo "<div id='pagination2'></div>";
        }
        else {
            echo "Không có chuyến bay phù hợp cho ngày về.";
        }
        echo "</div>";
    }
    ?>
 <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
 <script>
    // Biến toàn cục
    let currentPage = 1;
    let resultsPerPage = 6;
    let resultElements;

    // Hàm hiển thị kết quả theo trang
    function displayResults(page) {
        resultElements = document.querySelectorAll("#chuyenbay_results_ngaydi div");
        // Ẩn tất cả các mục đầu tiên
        resultElements.forEach(item => item.style.display = "none");
        // Hiển thị các mục trên trang hiện tại
        let startIndex = (page - 1) * resultsPerPage;
        let endIndex = page * resultsPerPage;
        for(let i = startIndex; i < endIndex && i < resultElements.length; i++) {
            resultElements[i].style.display = "block";
        }
        // Cập nhật phân trang sau khi hiển thị kết quả
        updatePagination();
    }

    // Hàm cập nhật nội dung của phân trang
    function updatePagination() {
        // Xóa nội dung cũ đi
        document.getElementById("pagination").innerHTML = "";  
        // Tính tổng số trang
        let numPages = Math.ceil(resultElements.length / resultsPerPage);
        // Tạo các nút cho từng trang
        for(let i = 1; i < numPages; i++) {
            let btn = document.createElement("button");
            btn.innerText = i;
            btn.onclick = function() {
                currentPage = i;
                displayResults(i);  
            }
            document.getElementById("pagination").appendChild(btn);
        }
        // Hiển thị phân trang
        document.getElementById("pagination").style.display = "block";
    }

    // Gọi các hàm ban đầu  
    displayResults(1);
</script>

<script>
    // Biến toàn cục
    let currentPage2 = 1;
    let resultsPerPage2 = 6;
    let resultElements2;

    // Hàm hiển thị kết quả theo trang
    function displayResults2(page) {
        resultElements2 = document.querySelectorAll("#chuyenbay_results_ngayve div");
        // Ẩn tất cả các mục đầu tiên
        resultElements2.forEach(item => item.style.display = "none");
        // Hiển thị các mục trên trang hiện tại
        let startIndex2 = (page - 1) * resultsPerPage2;
        let endIndex2 = page * resultsPerPage2;
        for(let i = startIndex2; i < endIndex2 && i < resultElements2.length; i++) {
            resultElements2[i].style.display = "block";
        }
        // Cập nhật phân trang sau khi hiển thị kết quả
        updatePagination2();
    }

    // Hàm cập nhật phân trang
    function updatePagination2() {
        // Xóa phân trang cũ 
        let pagination2 = document.getElementById("pagination2");
        if (!pagination2) return; // Đảm bảo phân trang tồn tại trước khi tiếp tục
        pagination2.innerHTML = "";
        let numPages2 = Math.ceil(resultElements2.length / resultsPerPage2);
        // Tạo các nút phân trang
        for(let i = 1; i < numPages2; i++) {
            let btn = document.createElement("button");
            btn.innerText = i;
            btn.onclick = function() {
                currentPage2 = i;
                displayResults2(i);    
            }
            pagination2.appendChild(btn);
        }
        // Hiển thị phân trang
        pagination2.style.display = "block";
    }

    // Gọi các hàm
    displayResults2(1);
</script>


    <script>
    document.addEventListener("DOMContentLoaded", function () {
        // Bắt sự kiện click cho tất cả các nút "Xem thêm"
        var btnXemThem = document.querySelectorAll('.btnXemThem');

        btnXemThem.forEach(function (btn) {
            btn.addEventListener('click', function () {
                var idMatuyen = this.getAttribute('data-idmatuyen');

                // Lưu giữ giá trị của 'this'
                var currentButton = this;

                // Lấy divThongTin tương ứng
                var divThongTin = currentButton.parentElement.querySelector('.divThongTin');

                // Kiểm tra nếu đã hiển thị thông tin thì ẩn nó đi, ngược lại hiển thị
                if ($(divThongTin).is(':visible')) {
                    $(divThongTin).slideUp("slow");
                } else {
                    // Ẩn tất cả các divThongTin khác
                    $('.divThongTin').not(divThongTin).slideUp("slow");

                    // Gửi yêu cầu AJAX đến thongtin.php
                    sendAjaxRequest();
                }

                // Hàm gửi yêu cầu AJAX
                function sendAjaxRequest() {
                    // Gửi yêu cầu AJAX đến thongtin.php
                    var xhr = new XMLHttpRequest();
                    xhr.open('POST', 'thongtin.php', true);
                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

                    // Gửi dữ liệu ID_MaTuyen
                    var data = 'idMatuyen=' + encodeURIComponent(idMatuyen);

                    xhr.onreadystatechange = function () {
                        if (xhr.readyState == 4 && xhr.status == 200) {
                            // Sử dụng giá trị 'currentButton' thay vì 'this'
                            divThongTin.innerHTML = xhr.responseText;
                            // Hiển thị thông tin với hiệu ứng slide
                            $(divThongTin).slideDown("slow");
                        }
                    };

                    xhr.send(data);
                }
            });
        });
    });
    </script>
</body>
</html>
