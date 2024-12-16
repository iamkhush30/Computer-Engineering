<!--to check given number is -->
<html>
	<head>
		<title>p4-4</title>
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

				if($a % 400 == 0)
					echo "$a is leap year";
				elseif($a % 100 != 0 && $a % 4 == 0)
					echo "$a is leap year";
				else
					echo "$a is not leap year";
			}
		?>
	</body>
</html>