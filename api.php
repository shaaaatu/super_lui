<?php
require_once $_SERVER['DOCUMENT_ROOT'] .'/authentication/authentication.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/conn.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/app/execution.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/config.super.php';

var_dump("argv: " . $_SERVER['argv'] . "<br>");
var_dump("argc: " . $_SERVER['argc'] . "<br>");
var_dump("GATEWAY_INTERFACE: " . $_SERVER['GATEWAY_INTERFACE'] . "<br>");
var_dump("SERVER_ADDR: " . $_SERVER['SERVER_ADDR'] . "<br>");
var_dump("SERVER_NAME: " . $_SERVER['SERVER_NAME'] . "<br>");
var_dump("SERVER_SOFTWARE: " . $_SERVER['SERVER_SOFTWARE'] . "<br>");
var_dump("SERVER_PROTOCOL: " . $_SERVER['SERVER_PROTOCOL'] . "<br>");
var_dump("REQUEST_METHOD: " . $_SERVER['REQUEST_METHOD'] . "<br>");
var_dump("REQUEST_TIME: " . $_SERVER['REQUEST_TIME'] . "<br>");
var_dump("QUERY_STRING: " . $_SERVER['QUERY_STRING'] . "<br>");
var_dump("DOCUMENT_ROOT: " . $_SERVER['DOCUMENT_ROOT'] . "<br>");
var_dump("HHTPS: " . $_SERVER['HTTPS'] . "<br>");
var_dump("REMOTE_ADDR: " . $_SERVER['REMOTE_ADDR'] . "<br>");
var_dump("REMOTE_HOST: " . $_SERVER['REMOTE_HOST'] . "<br>");
var_dump("REMOTE_PORT: " . $_SERVER['REMOTE_PORT'] . "<br>");
var_dump("REMOTE_USER: " . $_SERVER['REMOTE_USER'] . "<br>");
var_dump("REDIRECT_REMOTE_USER: " . $_SERVER['REDIRECT_REMOTE_USER'] . "<br>");
var_dump("SCRIPT_FILENAME: " . $_SERVER['SCRIPT_FILENAME'] . "<br>");
var_dump("SERVER_ADMIN: " . $_SERVER['SERVER_ADMIN'] . "<br>");
var_dump("SERVER_PORT: " . $_SERVER['SERVER_PORT'] . "<br>");
var_dump("SERVER_SIGNATURE: " . $_SERVER['SERVER_SIGNATURE'] . "<br>");
var_dump("PATH_TRANSLATED: " . $_SERVER['PATH_TRANSLATED'] . "<br>");
var_dump("SCRIPT_NAME: " . $_SERVER['SCRIPT_NAME'] . "<br>");
echo "-----------------------------------<br><br>";

function isFullyPermission($request_type, $auth, $commands)
{
	var_dump($auth->getRequestPermission());
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
if (empty($_POST['request_type']))
	return ("there is no request_type");

$request_type = $_POST['request_type'];
$request_data= json_decode($_POST['request_data']);

/* connect db */
$db = new mysqli($host, $dbuser, $dbpassword, $dbname);
if ($db->connect_error)
	exit("Connection failed: " . $db->connect_error);
else
	echo "Connected successfully!<br>";

/* get session id */
$ssid = getSsid();
echo "ssid: $ssid<br>";

/* login related operations based on ssid */
/* I need take user_id, request_permission from authentication*/
$auth = new Authentication($db, $ssid);
if (!$auth->authenticate())
	exit();

/* check permission */
if (!isFullyPermission($request_type, $auth, $commands))
	exit();

/* excecute based on type */
$result = executeRequest($request_type);

/* output result */
$apiresult = json_encode($result, JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE) ;
var_dump("<br>result: " . $apiresult);
?>
