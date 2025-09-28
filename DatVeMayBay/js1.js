// JavaScript Document
    function searchDatVe() {
        var searchInput = document.getElementById('searchInput').value;
        
        // Gửi yêu cầu AJAX để tìm kiếm dữ liệu
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'search_datve.php?id=' + searchInput, true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                // Hiển thị kết quả tìm kiếm tại content-container
                document.getElementById('content-container').innerHTML = xhr.responseText;
            } else {
                console.error('Có lỗi xảy ra khi tìm kiếm.');
            }
        };
        xhr.send();
    }

    // Gán sự kiện click cho nút Tìm kiếm
    document.getElementById('searchButton').addEventListener('click', searchDatVe);
