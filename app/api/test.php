<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept, X-Access-Token");
header('Access-Control-Allow-Methods: GET, POST, PUT');

$data = json_decode(file_get_contents("php://input"));
$id = $data->id;
$name = $data->name;
$contact_no = $data->contact_no;
$email = $data->email;
$con = mysql_connect("localhost", "root", ""); 
mysql_select_db("matrimony", $con);
$querry = "INSERT INTO employee(id, name, contact_no, email) VALUES('$id','$name','$contact_no','$email')";

if(!mysql_query($querry,$con)){
	header("HTTP/1.1 500 Internal Server Error");
    echo '{"data": "Exception occurred: '.$e->getMessage().'"}';
}else{
	echo "Data inserted successfuly";
}