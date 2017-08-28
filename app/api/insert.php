<?php 

// header("Access-Control-Allow-Origin: *");
// header("Content-Type: application/json; charset=UTF-8");

$connect = mysqli_connect("localhost", "root", "", "matrimony");
$data = json_decode(file_get_contents("php://input"));
if(count($data > 0)) {
	$first_name = mysqli_real_escape_string($connect, $data->firstname);
	$lats_name = mysqli_real_escape_string($connect, $data->lastname);
$query = "INSERT INTO tbl_user(first_name, last_name) VALUES ('$first_name', '$last_name')";
if(mysqli_query($connect, $query)) 
{
	echo "Data inserted.......";
}
else
{
	echo 'Error';
}
}
?>