<!--write a php scrip to mantain session of user name ans password-->
<?php
	session_start();
?>
<html>
	<head>
		<title>p15-1</title>
	</head>
	<body>
		<form method="POST" action="p15-1-2.php">
			Username:<input type="text" name="un"><br>
			Passwoed:<input type="password" name="p"><br>
			<button type="submit" name="s">Submit</button>
		</form>
		<?php
			if(isset($_POST['s']))
			{
				$un = $_POST['un'];
				$p = $_POST['p'];
				$_SESSION['status']=false;
				if ($un=='abc' && $p=='1234') 
				{
					$_SESSION['status']=true;
					$_SESSION['un']=$un;
					header("Location:p15-1-2.php");
				}
				else
				{
					echo "Invalid Username or password";
				}
			}
		?>
	</body>
</html>