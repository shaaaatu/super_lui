<?php
if (!((isset($request_data->username) || isset($request_data->email)) && isset($request_data->password)))
{
	echo "email or password not set <br>";
	exit();
}
$email = $request_data->email;
$username = $request_data->username;
$password = $request_data->password;
$tokenLength = 64;
$token = getToken($tokenLength);
$sql = "SELECT id, password, uuid, permission FROM users WHERE email='$email' OR name='$username'";
$result = $db->query($sql);
if (!$result)
{
	echo "SQL failed";
	exit();
}
$row = $result->fetch_assoc();
if (!password_verify($password, $row['password']))
{
	echo "password is not correct<br>";
	exit();
}
$sql = "INSERT INTO logins
	(token, logindatetime, lastused, logoutdatetime, valid, users_id, users_uuid, users_permission)
	VALUE (?, NOW(), NOW(), NULL, 1, ?, ?, ?)";
$stmt = $db->prepare($sql);
$stmt->execute([$token, $row['id'], $row['uuid'], $row['permission']]);
echo "login successfully!!!<br>";
?>
