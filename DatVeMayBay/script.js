// script.js
function toggleNestedContent(contentId) {
    var nestedContent = document.getElementById(contentId);
    if (nestedContent.style.display === "none" || nestedContent.style.display === "") {
        nestedContent.style.display = "block";
    } else {
        nestedContent.style.display = "none";
    }
}

function toggleNestedContent(contentId) {
    var nestedContent = document.getElementById(contentId);
    if (nestedContent.style.display === "none" || nestedContent.style.display === "") {
        nestedContent.style.display = "block";
    } else {
        nestedContent.style.display = "none";
    }
}
function toggleNestedContent(id) {
    var nestedContent = document.getElementById(id);
    nestedContent.style.display = (nestedContent.style.display === 'block') ? 'none' : 'block';
}

function toggleNestedContent(contentId) {
        var nestedContent = document.getElementById(contentId);

        if (nestedContent.style.display === "none" || nestedContent.style.display === "") {
            // Nếu chưa hiển thị, thì hiển thị và gửi AJAX request để lấy dữ liệu
            nestedContent.style.display = "block";
            
            // Thêm dòng này để gọi hàm fetchTheloaiData khi nhấp vào "Thêm thể loại"
            if (contentId === 'nested-baiviet') {
                fetchTheloaiData();
            }
        } else {
            nestedContent.style.display = "none";
        }
    }

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
// script.js
function toggleNestedContent(contentId) {
    var nestedContent = document.getElementById(contentId);
    if (nestedContent.style.display === "none" || nestedContent.style.display === "") {
        nestedContent.style.display = "block";

        // Nếu đúng là "nested-baiviet", thì gọi hàm để hiển thị form
        if (contentId === 'nested-baiviet') {
            displayAddBaivietForm();  // Sửa đổi tên hàm này
        }
    } else {
        nestedContent.style.display = "none";
    }
}

function displayAddBaivietForm() {  // Sửa đổi tên hàm này
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




