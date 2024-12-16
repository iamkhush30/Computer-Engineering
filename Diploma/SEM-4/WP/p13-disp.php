<?php
	$name=$_POST['FN'];
	$email=$_POST['E'];
	$mobile_no=$_POST['M'];
	$address=$_POST['A'];
	$dob=$_POST['DOB'];
	$gender=$_POST['G'];
	$state=$_POST['S'];
	$city=$_POST['C'];

	echo "<table border=2>";

	echo "<tr>"."<td>Name</td>"."<td>$name</td>"."</tr>";
	echo "<tr>"."<td>Email</td>"."<td>$email</td>"."</tr>";
	echo "<tr>"."<td>Mobile_no</td>"."<td>$mobile_no</td>"."</tr>";
	echo "<tr>"."<td>Address</td>"."<td>$address</td>"."</tr>";
	echo "<tr>"."<td>DOB</td>"."<td>$dob</td>"."</tr>";
	echo "<tr>"."<td>Gender</td>"."<td>$gender</td>"."</tr>";
	echo "<tr>"."<td>State</td>"."<td>$state</td>"."</tr>";
	echo "<tr>"."<td>City</td>"."<td>$city</td>"."</tr>";

	echo "</table>";
	
?>