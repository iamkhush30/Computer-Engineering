<!--max number out of 3 number-->
<html>
	<head>
		<title>p4-1</title>
	</head>
	<body>
		<form>
			Enter A:<input type="text" name="a">
			<br><br>
			Enter B:<input type="text" name="b">
			<br><br>
			Enter C:<input type="text" name="c">
			<br><br>
			<button type="submit" name="submit">Calculate</button>
		</form>
		<?php
			if(isset($_GET['submit']))
			{
				$a = $_GET['a'];
				$b = $_GET['b'];
				$c = $_GET['c'];

				if($a > $b && $a > $c)
				{
					echo ("$a is max");
				}
				elseif($b > $c)
				{
					echo ("$b is max");
				}
				else
				{
					echo ("$c is max");
				}
			}
		?>
	</body>
</html>