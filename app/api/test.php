<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST, PUT');

$data = json_decode(file_get_contents("php://input"));
$id = mysql_real_escape_string($data->id);
$name = mysql_real_escape_string($data->name);
$contact_no = mysql_real_escape_string($data->contact_no);
$email = mysql_real_escape_string($data->email);
mysql_connect("localhost", "root", ""); 
mysql_select_db("matrimony");
try{
	mysql_query("INSERT INTO employee('id', 'name', 'contact_no', 'email') VALUES('".$id."','".$name."','".$contact_no."','".$email."')");
	echo "Data Inserted Successfully"
}catch(Exception $e){
	throw new Exception($e->getMessage());
}
?>