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

function connectDB()
{
	global $host;
	global $dbuser;
	global $dbpassword;
	global $dbname;
	global $t;

	$db = new mysqli($host, $dbuser, $dbpassword, $dbname);
	if ($db->connect_error)
	{
		outputResult([], $t->logs);
		exit(0);
	}
	$t->log("connected successfully!");
	return ($db);
}

function outputResult($result, $logs)
{
	global $request_data;

	if ($request_data->test)
		$apiresult = $result;
	else if ($request_data->debug)
		$result = array('verbose' => $logs) + $result;
	if (!$request_data->test)
		$apiresult = json_encode($result, JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE);
	echo "$apiresult";
}

/* init variable */
/* check if super-request or not */
/* check if request_type defined */
$request_data = NULL;
$t->log("check request type");

if (empty($_POST['request_type']))
	return ("there is no request_type");
$request_type = $_POST['request_type'];
$request_data= json_decode($_POST['request_data']);
$db = connectDB();
$ssid = getSsid();
$auth = Authentication::getInstance($db, $ssid);
$auth->authenticate();
if (!isFullyPermission($request_type, $auth, $commands))
{
	$t->log("not fully permission");
	outputResult([], $t->logs);
	exit();
}

if ($request_data->test)
	$result = executeRequest($request_type);
else
{
	$result = [];
	$result[$request_type] = executeRequest($request_type);
}
outputResult($result, $t->logs);
?>
