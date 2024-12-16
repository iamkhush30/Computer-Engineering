<!--
write php script to sort the following associtive array
array("Sophia" => "31","Jacob" => "41","William" => "39","Ramash" => "40");
A)Assending order sort by value
B)Assending order sort by key
C)decending order sort by value
D)decending order sort by key
-->
<html>
	<head>
		<title>p8-1</title>
	</head>
	<body>
		<?php
			$a = array("Sophia" => "31","Jacob" => "41","William" => "39","Ramash" => "40");
			asort($a);
			echo "asort()<br><br>";
			foreach ($a as $key => $value)
				echo ("$key $value,  ");

			ksort($a);
			echo "<br><br>ksort()<br><br>";
			foreach ($a as $key => $value)
				echo ("$key $value,  ");

			arsort($a);
			echo "<br><br>arsort()<br><br>";
			foreach ($a as $key => $value)
				echo ("$key $value,  ");
			
			krsort($a);
			echo "<br><br>ksort()<br><br>";
			foreach ($a as $key => $value)
				echo ("$key $value,  ");
		?>
	</body>
</html>