<!--write a php script uing string function which 
	a) return the length of str
	b) convert a string to lower case 
	c) convert a string to upper case
	d) reverse a string
	e) remove white space from string
	f) replase some charecter in string
	g) comper two string
	h) find the position of first and last occurrence of string
	i) return th path of string
-->	
<?php
	$a="Hello world";
	echo "Lenght = ".strlen($a)."<br>";
	echo "Lower case = ".strtolower($a)."<br>";
	echo "Upper case = ".strtoupper($a)."<br>";
	echo "Reverse = ".strrev($a)."<br>";
	echo "Trim = ".trim($a)."<br>";
	echo "Replace = ".str_replace("world","Hii", $a)."<br>";
	echo "Compare = ".strcmp($a,"Hello")."<br>";
	echo "position Start = ".strpos($a,"o")."<br>";
	echo "position End = ".strrpos($a,"o")."<br>";
	echo "Path = ".substr($a,2)."<br>";

?>