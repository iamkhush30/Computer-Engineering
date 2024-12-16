<!--create student registratiion form of
	full name
	Email
	Mobile_no
	Address
	DOB
	Gender
	State
	City
	ans display user inserted value in next page-->

<html>
	<head>
		<title>p13</title>
	</head>
	<body>
		<table border="2">
			<form method="POST" action="p13-disp.php">
			<tr>
			<td>Full name :</td>
			<td><input type="text" name="FN"></td>
			</tr>

			<tr>
			<td>Email :</td>
			<td><input type="text" name="E"></td>
			</tr>

			<tr>
			<td>Mobile_no :</td>
			<td><input type="number" name="M"></td>
			</tr>

			<tr>
			<td>Address :</td>
			<td><input type="text" name="A"></td>
			</tr>

			<tr>
			<td>DOB :</td>
			<td><input type="date" name="DOB"></td>
			</tr>

			<tr>
			<td>Gender :</td>
				<td>
					<input type="radio" name="G">Male
					<input type="radio" name="G">Female
				</td>
			</tr>

			<tr>
			<td>State :</td>
			<td><input type="text" name="S"></td>
			</tr>

			<tr>
			<td>City :</td>
			<td><input type="text" name="C"></td>
			</tr>

			<td>
				<button type="submit" name="submit">Submit</button>
			</td>
			</form>
		</table>
	</body>
</html>