<!--write a php scrip to creat user define function with the name Get_rectangle_area to calculae the area of rectengle that take two int input l and b return int area as an output-->
<html>
	<head>
		<title>p10-2</title>
	</head>
	<body>
		<form>
			Enter L:<input type="text" name="l">
			<br><br>
			Enter B:<input type="text" name="b">
			<br><br>
			<button type="submit" name="submit">Calculate</button>
		</form>
		<?php
			if(isset($_GET['submit']))
			{

				function get_rectengale_area($x,$y)
				{
					return $x * $y;
				}
				$ans = get_rectengale_area($_GET['l'],$_GET['b']);
				echo "<br>Area = ".$ans;
			}
		?>

	</body>
</html>