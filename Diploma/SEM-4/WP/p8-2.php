<!--
write php scrip to print employee detail
{
	employee_Id
	First_name
	Last_name
	Email
	Address
	City
}using for-each loop using associted array
-->
<html>
	<head>
		<title>p8-2</title>
	</head>
	<body>
		<?php
			$a = array(	"Id" => "001",
						"First_name" => "Ida",
						"Last_name" => "Gaurav",
						"Email" => "21020201061@darshan.ac.in",
						"Address" => "abc, xyz",
						"City" => "Rajkot"
					);
			foreach ($a as $key => $value) {
				echo "$key = $value <br>";
			}
		?>
	</body>
</html>