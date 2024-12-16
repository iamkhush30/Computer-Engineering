<html>
	<head>
		<title>p9-2</title>
	</head>
	<body>
		<?php
			$a = array(array(1,1,1),array(1,1,1),array(1,1,1));
			$b = array(array(2,2,2),array(2,2,2),array(2,2,2));
			for ($i=0; $i < 3 ; $i++) 
			{ 
				for ($j=0; $j < 3 ; $j++) 
				{ 
					$sum=0;
					for ($k=0; $k < 3 ; $k++) 
					{ 
						$sum += $a[$i][$k] * $b[$k][$j];
					}
					echo $sum." ";
				}
				echo "<br>";
			}
		?>
	</body>
</html>