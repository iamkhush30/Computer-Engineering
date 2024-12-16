<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<form method="POST" action="demo-s.php">
		User Name:
		<input type="text" name="uname"><br>
		<br>
		Password:
		<input type="Password" name="pwd"><br><br>

		<input type="submit" name="login" value="login">
	</form>
<?php
if(isset($_POST['login']))
{
	$uname=$_POST['uname'];
	$pwd=$_POST['pwd'];
	$_SESSION['status']=false;
	if($uname=='abc' && $pwd=='1234')
	{
		$_SESSION['status']=true;
		$_SESSION['uname']=$uname;
		header("Location:demo-s2.php");
	}
	else
	{
		echo "Invalid username and password";
	}
}
?>
</body>
</html>