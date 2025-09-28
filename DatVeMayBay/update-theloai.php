<?php
    include 'db.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style1.css">
    <!-- Add Font Awesome stylesheet -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
   <style>
        .delete-icon {
            color: red; 
            margin-right: 5px; 
            transition: color 0.3s ease; 
        }

        .delete-icon:hover {
            color: darkred; 
        }
    </style>
    <title>Thể Loại</title>
</head>
<body>

    <h1 style="font-size: 3em;">Thể Loại</h1>

    <?php
        // Hiển thị bảng thể loại
        $query = "SELECT * FROM theloai";
        $result = mysqli_query($connect, $query);

        if ($result) {
            echo '<table>';
            echo '<tr><th>ID</th><th>Tên Thể Loại</th><th>Xóa</th></tr>';

            while ($row = mysqli_fetch_assoc($result)) {
                echo '<tr>';
                echo '<td>' . $row['ID_TheLoai'] . '</td>';
                echo '<td>' . $row['TenTheLoai'] . '</td>';
                echo '<td><a href="delete-theloai.php?id=' . $row['ID_TheLoai'] . '" onclick="return confirmDelete(' . $row['ID_TheLoai'] . ')"><i class="fas fa-trash delete-icon"></i></a></td>';
                echo '</tr>';
            }

            echo '</table>';
        } else {
            echo "Error: " . mysqli_error($connect);
        }

        mysqli_close($connect);
    ?>

    <!-- Form thêm Thể Loại -->
    <div class="form-container">
        <form method="post" action="insert-theloai.php">
            <label for="tenTheLoai">Tên Thể Loại:</label>
            <input type="text" id="tenTheLoai" name="tenTheLoai" required>
            <input type="submit" value="Thêm Thể Loại">
        </form>
    </div>

    <script>
        function confirmDelete(id) {
            return confirm("Bạn có chắc chắn muốn xóa ID " + id + " không?");
        }
    </script>

</body>
</html>
