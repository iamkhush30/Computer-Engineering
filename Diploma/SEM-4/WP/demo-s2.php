<?php
session_start();
if ($_SESSION['status']!=true) {
	header("Location:demo-s.php");}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Welcome page</title>
</head>
<body>
<h2>welcome <?php echo $_SESSION['uname'];?></h2>
<form method="POST" action="demo-s2.php">
	<input type="submit" name="logout" value="logout">
</form>
</body>
</html>
<?php
if (isset($_POST['logout'])) {
		header("Location:demo-s3.php");
}
?>