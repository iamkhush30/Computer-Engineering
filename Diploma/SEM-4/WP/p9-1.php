<!--write a PHP script to print add of 2 matrix-->
<html>
	<head>
		<title>p9-1</title>
	</head>
	<body>
		<?php
			$a = array(array(1,1,1),array(1,1,1),array(1,1,1));
			$b = array(array(1,1,1),array(1,1,1),array(1,1,1));
			for ($i=0; $i < 3 ; $i++) 
			{ 
				for ($j=0; $j < 3 ; $j++) 
				{ 
					echo $a[$i][$j] + $b[$i][$j]." ";
				}
				echo "<br>";
			}
		?>
	</body>
</html>