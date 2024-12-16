<!--to check whtaer given number is -->

<html>
	<head>
		<title>p5-3</title>
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
				$n = $_GET['a'];
				$a = 0;
				$b = 1;
				$c = 0;
				echo "$a <br>";
				echo "$b <br>";
				while ($c <= $n )
				{
					$a = $b;
					$b = $c;
					echo "$c <br>";
					$c = $a + $b;
				} 
			}
		?>
	</body>
</html>