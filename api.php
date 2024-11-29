<?php
require_once $_SERVER['DOCUMENT_ROOT'] .'/authentication/authentication.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/conn.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/app/execution.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/config.super.php';

function isFullyPermission($request_type, $auth, $commands)
{
	if(in_array($request_type, $commands[$auth->getRequestPermission()]))
	{
		echo "Permission OK <br>";
		$_POST['request_id'] = $auth->getRequestId();
		return true;

	}
	else
	{
		//the user doesn't have permission to use this request!
		echo "Permission not granted. Quitting <br>";
		return false;
	}
}

/* is request_type defined */
/* init variable */
/* check if super-request or not */
/* check if request_type defined */
error_log("\n\n-----------------------------------\ncheck request_type is not empty");
if (empty($_POST['request_type']))
	return ("there is no request_type");

error_log("get request_type/data");
$request_type = $_POST['request_type'];
$request_data= json_decode($_POST['request_data']);

/* connect db */
error_log("connect mysqli");
$db = new mysqli($host, $dbuser, $dbpassword, $dbname);
if ($db->connect_error)
	die("Connection failed: " . $db->connect_error);
else
	echo "Connected successfully!";

/* get session id */
error_log("get ssid");
$ssid = getSsid();

/* login related operations based on ssid */
/* I need take user_id, request_permission from authentication*/
error_log("authentication");
$auth = new Authentication($db, $ssid);
$auth->authenticate();
echo "id: " . $auth->getRequestId() . "<br>";
echo "permission: " . $auth->getRequestPermission() . "<br>";

/* check permission */
error_log("check permission");
if (!isFullyPermission($request_type, $auth, $commands))
	exit();

/* excecute based on type */
error_log("execute request");
$result = executeRequest($request_type);

/* output result */
$apiresult = json_encode($result, JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE) ;
echo "<br>result: $apiresult";
error_log("done\n--------------------------------------------------------------\n");
?>
