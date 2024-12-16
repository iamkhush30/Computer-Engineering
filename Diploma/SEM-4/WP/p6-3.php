<html>
	<head>
		<title>p6-3</title>
	</head>
	<body>
		<form>
			Enter A:<input type="text" name="a">
			<br><br>
			<button type="submit" name="s">Calculate</button>
		</form>
		<?php
			if(isset($_GET['s']))
			{
				$a = $_GET['a'];
				while($a > 1)
				{
					$sum = $a % 10;
					echo"$sum";
					$a = $a / 10 ;
				}
			}
		?>
    </body>
</html>