<?php
// Database Connection
$host = "localhost";
$uname = "root";
$pass = "";
$database = "gloss"; 
$connection = mysql_connect($host,$uname,$pass); 
echo mysql_error();

//or die("Database Connection Failed");
$selectdb = mysql_select_db($database) or 
die("Database could not be selected"); 
$result = mysql_select_db($database)
or die("Database cannot be selected <br>");

// Fetch Record from Database
$output = "";
$table = "gloss_content"; // Enter Your Table Name 
$sql = mysql_query("select * from $table");
$columns_total = mysql_num_fields($sql);


// Get Records from the table
while ($row = mysql_fetch_array($sql)) {
$intro = $row['introtext'];
$v = preg_quote($v, '/');
$intro = preg_replace(''.$v.'joomla', '..'.$v.'', $intro);	
$sqls = mysql_query("UPDATE $table SET introtext = $intro WHERE id = '".$row['id']."' ");
}
?>