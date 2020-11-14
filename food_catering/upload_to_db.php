<!DOCTYPE html>
<html lang="en">
<head>
    <title>Image to Database</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">

    <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>

    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
    <br>

    <form method="post" action="upload_to_db.php" enctype="multipart/form-data">
        <input type="hidden" name="size" value="1000000">


        <div>
            <input type="file" name="image" >

        </div>

        <div>
            <input name="text"  placeholder="name of image" required>
            <input name="logo"  placeholder="logo of image" required>
            <input name="price"  placeholder="price of image" required>
        </div>

        <div>
            <input type="submit" name="upload" value="Upload">
        </div>

    </form>


</div>
<?php
require_once ("config.php");

$msg = "";

if(isset($_POST["upload"]))
{
    $target = "uploads/".basename($_FILES["image"]["name"]);

    $image = $_FILES["image"]["name"];
    $name  = $_POST["text"];
    $logo  = $_POST["logo"];
    $price  = $_POST["price"];

    $stmt = $con->prepare("insert into fruits(img, name, logo, price) values(?,?,?,?) ");
    $stmt->bind_param("ssss",$image, $name, $logo, $price);

    
    if(move_uploaded_file($_FILES["image"]["tmp_name"], $target) && $stmt->execute()===true)
    {
        $msg = "Uploaded successfully";
    }
    else{
        $msg = "Error :".mysqli_error($con);
    }
    echo $msg;


}


?>
</body>
</html>


