<html>
	<head>
		<title>p6-2</title>
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
				$sum =0;
				while($a%10!=0)
				{
					$sum = $sum + $a % 10;
					$a = $a / 10 ;
					
				}
				echo "Ans = $sum";
			}
		?>
	</body>
</html>