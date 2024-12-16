<!-- write php script to find simple inttrest the value of P,R and N entered by user (Si PRN/100) -->

<html>
	<head>
		<title>p3-2</title>
	</head>
	<body>
		<form>
			Enter P:<input type="text" name="P">
			<br><br>
			Enter R:<input type="text" name="R">
			<br><br>
			Enter N:<input type="text" name="N">
			<br><br>
			<button type="submit" name="submit">Calculate</button>
		</form>
		<?php
			if(isset($_GET['submit']))
			{
				$a = $_GET['P'];
				$b = $_GET['R'];
				$c = $_GET['N'];

				$ans = $a * $b * $c/ 100;

				echo "Ans = $ans" ;
			}
		?>
	</body>
</html> 