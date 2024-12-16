<!--to check given number is even or odd-->
<html>
	<head>
		<title>p4-3</title>
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

				if($a % 2 == 0)
					echo "$a is even";
				else
					echo "$a is odd"  ;
			}
		?>
	</body>
</html>