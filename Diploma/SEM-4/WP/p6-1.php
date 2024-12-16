z`<!--to calculte ele. bill using control struc
	50 unit - Rs. 3.50
	100 unit - Rs. 4
	for next 100 unit -5.20
	for unit >250 unit -6.5
-->
<html>
	<head>
		<title>p6-1</title>
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
				$n = 0;
				if($a > 0 && $a < 51)
				{
					$a *= 3.50;
					echo "Total Rs = $a";
				}
				elseif($a > 50 && $a < 151)
				{
					$n = 50 * 3.50;
					$n = $n + ($a - 50) * 4;
					echo "Total Rs = $n";
				}
				elseif($a > 150 && $a < 251)
				{
					$n = $n + ( 50 * 3.50 );
					$n = $n + ( 100 * 4 ) ;
					$n = $n + ($a - 100 )*5.20;
					echo "Total Rs = $n";
				}
				elseif($a > 250)
				{
					$n = $n + ( 50 * 3.50 );
					$n = $n + ( 100 * 4 ) ;
					$n = $n + ( 100 * 5.20 ) ;
					$n = $n + ($a - 250 )*6.5;
					echo "Total Rs = $n";
				}
			}
		?>
	</body>
</html>