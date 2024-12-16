<html>
	<head>
		<title>p3-1</title>
	</head>
	<body>
		<form>
			Enter A:<input type="text" name="1">
			<br><br>
			Enter B:<input type="text" name="2">
			<br><br>
			<select name="select">
				<option>None</option>
				<option>Add</option>
				<option>Sub</option>
				<option>Mul</option>
				<option>Div</option>
				<option>Mod</option>
			</select>
			<br><br>
			<button type="submit" name="submit">Calculate</button>
		</form>
		<?php
			if(isset($_GET['submit']))
			{
				$a=$_GET['1'];
				$b=$_GET['2'];
				$c=$_GET['select'];
				switch ($c) 
				{
					case 'None':
						echo "Please Select any option";
						break;

					case 'Add':
						echo "Ans = ";
						echo $a+$b;
						break;

					case 'Sub':
						echo "Ans = ";
						echo $a-$b;
						break;

					case 'Mul':
						echo "Ans = ";
						echo $a*$b;
						break;

					case 'Div':
						echo "Ans = ";
						echo $a/$b;
						break;

					case 'Mod':
						echo "Ans = ";
						echo $a%$b;
						break;
				}	
			}
		?>
	</body>
</html>