<html>
	<head>
		<title>p3-3</title>
	</head>
	<body>
		<form>
			Maths   :<input type="text" name="M">
			<br><br>
			Science :<input type="text" name="S">
			<br><br>
			English :<input type="text" name="E">
			<br><br>
			<button type="submit" name="submit">Calculate</button>
		</form>
		<?php 
			if (isset($_GET['submit'])) 
			{
				$a = $_GET['M'];
				$b = $_GET['S'];
				$c = $_GET['E'];

				$ans = $a + $b + $c;

				$avg = $ans / 3;

				if ($avg <= 100 && $avg >= 90)
				{
					echo "Total = $ans"."<br>";
					echo "Grade = A+";
				}
				elseif ($avg <= 91 && $avg >= 80)
				{
					echo "Total = $ans"."<br>";
					echo "Grade = A";
				}
				elseif ($avg <= 81 && $avg >= 70)
				{
					echo "Total = $ans"."<br>";
					echo "Grade = B";
				}
				elseif ($avg <= 71 && $avg >= 60)
				{
					echo "Total = $ans"."<br>";
					echo "Grade = C";
				}
				elseif ($avg <= 61 && $avg >= 50)
				{
					echo "Total = $ans"."<br>";
					echo "Grade = D";
				}
				else
				{
					echo "Total = $ans"."<br>";
					echo "Grade = F";
				}
			}
		?>
	</body>
</html>