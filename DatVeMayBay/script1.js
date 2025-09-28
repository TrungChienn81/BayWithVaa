<script>
    function editBaiviet(id) {
        // Hiển thị form modal
        document.getElementById('editForm').style.display = 'block';

        // Gửi yêu cầu AJAX để lấy dữ liệu bài viết từ server dựa trên ID_News
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var data = JSON.parse(this.responseText);

                // Điền dữ liệu vào form
                document.getElementById('editID').value = data.ID_News;
                document.getElementById('editTieuDe').value = data.TieuDe;
                document.getElementById('editMoTa').value = data.MoTa;
                // Điền các trường khác tùy thuộc vào cấu trúc bảng của bạn
            }
        };
        xhr.open("GET", "get_baiviet.php?id=" + id, true);
        xhr.send();
    }

    function closeEditForm() {
        // Ẩn form modal khi người dùng đóng
        document.getElementById('editForm').style.display = 'none';
    }

    function saveEdit() {
        // Lấy dữ liệu từ form
        var id = document.getElementById('editID').value;
        var tieude = document.getElementById('editTieuDe').value;
        var mota = document.getElementById('editMoTa').value;
        // Lấy các trường khác tùy thuộc vào cấu trúc bảng của bạn

        // Gửi yêu cầu AJAX để lưu dữ liệu chỉnh sửa vào cơ sở dữ liệu
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Cập nhật lại trang sau khi lưu thành công (có thể làm lại truy vấn và hiển thị lại bảng)
                location.reload();
            }
        };
        xhr.open("POST", "save_edit_baiviet.php", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send("id=" + id + "&tieude=" + tieude + "&mota=" + mota);
        // Thêm các trường khác tùy thuộc vào cấu trúc bảng của bạn
    }
</script>