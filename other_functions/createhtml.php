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
for ($i = 0; $i < $columns_total; $i++) {
	$output .='"'.$row["$i"].'",';
	$file = "terms/".$row["alias"].'.html';
if (file_exists ($file)==false)
{
	$output = "<h2>".$row["title"]."<h2>\n";
	$output .= $row["introtext"]."\n";

	
	$id_file = fopen($file, 'w+');
	fwrite($id_file, $output);
	fclose($id_file);
}
}
	$output .= "\n";
}
?>