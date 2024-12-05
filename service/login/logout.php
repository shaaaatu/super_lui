<?php
if (isset($_COOKIE['SSID']))
	$sql = "UPDATE logins SET valid=0, logoutdatetime=NOW() WHERE valid=1 AND token='{$_COOKIE['SSID']}'";
else if (isset($request_data->email))
{
	$email = $request_data->email;
	$sql = "SELECT uuid FROM users WHERE email='$email'";
	$result = $db->query($sql);
	if (!$result)
	{
		echo "query failed";
		exit();
	}
	$row = $result->fetch_assoc();
	if (empty($row))
	{
		echo "email is not correct";
		exit();
	}
	$uuid = $row['uuid'];
	$sql = "UPDATE logins SET valid=0, logoutdatetime=NOW() WHERE valid=1 AND users_uuid='{$uuid}'";
}
else
{
	echo "please enter email or SSID";
	exit();
}
$db->query($sql);
$output = "logout successful";
?>
