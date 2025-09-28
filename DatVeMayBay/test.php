<!DOCTYPE html>
<html>
<head>
    <title>Chọn nơi đi và nơi đến</title>
    <style>
        /* Thêm CSS của bạn tại đây */
        .divThongTin {
            border: 1px solid #ccc;
            padding: 10px;
            margin-top: 10px;
            display: none;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <h2>Chọn nơi đi và nơi đến để tìm chuyến bay</h2>
    <form action="" method="post">
        <label for="noidi">Chọn nơi đi:</label>
        <select name="noidi" id="noidi">
            <?php
            include 'db.php'; // Điều chỉnh đường dẫn đến tệp kết nối cơ sở dữ liệu của bạn

            $sql = "SELECT ID_CHK, TenSanBay FROM sanbay";
            $result = $connect->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<option value='" . $row['ID_CHK'] . "'>" . $row['TenSanBay'] . "</option>";
                }
            } else {
                echo "<option value=''>Không có sân bay</option>";
            }
            ?>
        </select>

        <label for="noiden">Chọn nơi đến:</label>
        <select name="noiden" id="noiden">
            <?php
            $sql = "SELECT ID_CHK, TenSanBay FROM sanbay";
            $result = $connect->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<option value='" . $row['ID_CHK'] . "'>" . $row['TenSanBay'] . "</option>";
                }
            } else {
                echo "<option value=''>Không có sân bay</option>";
            }
            ?>
        </select>

        <label for="ngay">Chọn ngày:</label>
        <input type="date" name="ngay">
		
		<label for="loaibay">Chọn loại bay:</label>
     	 <select name="loaibay" id="loaibay">
            <option value="1">Một chiều</option>
            <option value="2">Khứ hồi</option>
        </select>
		<div id="ngayve_container" style="display: none;">
            <label for="ngayve">Chọn ngày về:</label>
            <input type="date" name="ngayve" id="ngayve">
        </div>

        <input type="submit" value="Tìm chuyến bay">
    </form>

    <div id="chuyenbay_results">
        <!-- Kết quả tìm kiếm chuyến bay sẽ được hiển thị ở đây -->
    </div>

    <script>
		$(document).ready(function() {
            $('#loaibay').change(function() {
                var selectedOption = $(this).val();
                if (selectedOption === '2') {
                    $('#ngayve_container').show();
                } else {
                    $('#ngayve_container').hide();
                }
            });
          
            $('form').on('submit', function(e) {
                e.preventDefault();
                var formData = $(this).serialize();

                $.ajax({
                    method: 'POST',
                    url: 'search.php',
                    data: formData,
                    success: function(response) {
                        $('#chuyenbay_results').html(response);
                    },
                    error: function() {
                        alert('Đã xảy ra lỗi, vui lòng thử lại sau.');
                    }
                });
            });
          
            $(document).on('click', '.btnXemThem', function() {
                var idMaTuyen = $(this).data('idmatuyen');
                var divThongTin = $(this).siblings('.divThongTin');

                if (divThongTin.is(':visible')) {
                    divThongTin.slideUp();
                } else {
                    $.ajax({
                        method: 'POST',
                        url: 'thongtin.php',
                        data: { idMatuyen: idMaTuyen },
                        success: function(response) {
                            divThongTin.html(response).slideDown();
                        },
                        error: function() {
                            alert('Đã xảy ra lỗi, vui lòng thử lại sau.');
                        }
                    });
                }
            });
        });
</script>
</body>
</html>
