<?php

function checkDuplicateUser($email)
{
	global $db;
	$sql = "SELECT email FROM users WHERE email='$email'";
	$result = $db->query($sql);
	$row = $result->fetch_assoc();
	var_dump($row);
	if (!empty($row))
		return 1;
	return 0;
}

function genUuid()
{
	$pattern = "xxxxxxxx_xxxx_4xxx_yxxx_xxxxxxxxxxxx";
	$character_array = str_split($pattern);
	$uuid = "";

	foreach ($character_array as $character)
	{
		switch ($character)
		{
			case "x":
				$uuid .= dechex(random_int(0, 15));
				break;
			case "y":
				$uuid .= dechex(random_int(8, 11));
				break;
			default:
				$uuid .= $character;
		}
	}
	return $uuid;
}

echo "creating user<br>";
error_log("creating user\n");

if (!(isset($request_data->email) && isset($request_data->username) && isset($request_data->password)))
{
	echo "email or username or password not set <br>";
	exit();
}
$email = $request_data->email;
$username = $request_data->username;
$password = $request_data->password;

$hash = getHash($password);
echo "check duplicate<br>";
if (checkDuplicateUser($email))
{
	echo "duplicate user\(email\))<br>";
	exit();
}
echo "not duplicated<br>";
$uuid = genUuid();

$sql = 'INSERT INTO users (email, name, password, uuid, permission) VALUES (?, ?, ?, ?, ?)';
$stmt = $db->prepare($sql);
$stmt->execute([$email, $username, $hash, $uuid, 1]);
echo "create user successful <br>";
?>
