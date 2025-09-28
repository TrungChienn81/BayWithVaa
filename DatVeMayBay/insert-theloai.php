<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tenTheLoai = mysqli_real_escape_string($connect, $_POST['tenTheLoai']);

    $query = "INSERT INTO theloai (TenTheLoai) VALUES ('$tenTheLoai')";
    $result = mysqli_query($connect, $query);

    if ($result) {
        echo "Thêm Thể Loại thành công!";
        
        // Chuyển hướng về trang admin.php sau khi thêm thành công
        header("Location: admin.php");
        exit();
    } else {
        echo "Error: " . mysqli_error($connect);
    }
}

mysqli_close($connect);
?>
