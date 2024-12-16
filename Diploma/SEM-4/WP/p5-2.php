<!--to check whtaer given number is -->

<html>
	<head>
		<title>p5-1</title>
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
				$a = $_GET['a'];
				$add = 1;
				for($i = $a ; $i > 0 ; $i--)
				{
					$add *= $i;
				}
				echo "Fact = $add";
			}
		?>
	</body>
</html>