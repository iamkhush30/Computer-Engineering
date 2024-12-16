<?php session_start() ?>
<!DOCTYPE html>
<html>
	<head>
		<title>p-1-2</title>
	</head>
	<body>
		<h2>Welcome <?php echo $_SESSION['un']; ?></h2>
		<form method="POST" action="p15-1-2.php">
			<button type="submit" name="logout">Logout</button>
		</form>
		<?php
			if(isset($_POST['logout']))
			{
				header("Location:p15-1-3.php");
			}
		?>
	</body>
</html>