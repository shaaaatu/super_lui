<?php
require_once $_SERVER['DOCUMENT_ROOT'] .'/authentication/authentication.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/conn.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/app/execution.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/config.super.php';
require_once $_SERVER['DOCUMENT_ROOT'] .'/init.php';

function isFullyPermission($request_type, $auth, $commands)
{
	global $t;

	if(in_array($request_type, $commands[$auth->getRequestPermission()]))
	{
		$t->log("Permission OK");
		$_POST['request_id'] = $auth->getRequestId();
		return true;

	}
	else
	{
		//the user doesn't have permission to use this request!
		$t->log("Permission not granted. Quitting");
		return false;
	}
}

/* is request_type defined */
/* init variable */
/* check if super-request or not */
/* check if request_type defined */
$t->log("check request type");
if (empty($_POST['request_type']))
	return ("there is no request_type");

$request_type = $_POST['request_type'];
$request_data= json_decode($_POST['request_data']);

/* connect db */
$db = new mysqli($host, $dbuser, $dbpassword, $dbname);
if ($db->connect_error)
	exit("Connection failed: " . $db->connect_error);
else
	$t->log("Connected successfully!");

/* get session id */
$ssid = getSsid();
$t->log("ssid: $ssid");

/* login related operations based on ssid */
/* I need take user_id, request_permission from authentication*/
$auth = new Authentication($db, $ssid);
if (!$auth->authenticate())
	exit();

/* check permission */
if (!isFullyPermission($request_type, $auth, $commands))
	exit();

/* excecute based on type */
$result = [];
$result[$request_type] = executeRequest($request_type);

/* output result */
if ($request_data->debug)
	$result = array('verbose' => $t->logs) + $result;
$apiresult = json_encode($result, JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE);
echo "<pre>$apiresult</pre>";
?>
