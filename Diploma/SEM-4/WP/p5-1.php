<!--to check whtaer given number is prime or not prime-->
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
				$count = 0;
				for($i = 1 ; $i <= $a ; $i++)
				{
					if($a % $i == 0)
					{
						$count = $count + 1;
					}
				}

				if($count == 2)
					echo "$a is prime";
				else
					echo "$a is not prime";
			}
		?>
	</body>
</html>