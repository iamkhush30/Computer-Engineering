<!--to check given number is positive or nagative-->
<html>
	<head>
		<title>p4-2</title>
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

				if($a > 0)
					echo "$a is positive";
				elseif($a < 0)
					echo "$a is nagative";
				else
					echo "$a is unique";
			}
		?>
	</body>
</html>