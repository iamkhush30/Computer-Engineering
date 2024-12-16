<!--write a php scrip to creat user define function that calculate the cube of given number-->
<html>
	<head>
		<title>p10-1</title>
	</head>
	<body>
		<form>
			Enter A:<input type="text" name="a">
			<br><br>
			<button type="submit" name="submit">Calculate</button>
		</form>
		<?php
			if(isset($_GET['submit']))
			{
				function cube($x)
				{
					return $x * $x * $x;
				}
				$ans = cube($_GET['a']);
				echo "<br>".$ans;
			}
		?>

	</body>
</html>