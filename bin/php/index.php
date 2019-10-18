<html>
 <head>
  <title>Hello!</title>
  <meta charset="utf-8"> 
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<body>
    <div class="container">
    <?php echo "<h1>Hello</h1>"; ?>

    <?php
    $connect = mysqli_connect('mysql', 'docker', 'docker', 'docker');
    if ($connect->connect_error) {
        die('kết nối không thành công ' . $connect->connect_error);
    }
    $sql = "SELECT * FROM employees";
    $result = $connect->query($sql);
    if ($result && $result->num_rows > 0) {
        $i = 1;
        while ($row = $result->fetch_assoc()) {
            echo 'Dữ liệu thứ ' . $i . ' gồm: ' . $row['first_name'] . ' - ' . $row['last_name'] . ' - ' . $row['department'] . ' - ' . $row['email'].'<br/>';
            $i++;
        }
    } else
        echo 'Không thành công. Lỗi' . $connect->error;
    $connect->close();
    ?>
    </div>
</body>
</html>