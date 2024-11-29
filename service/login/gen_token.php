<?php
echo "gen_token <br>";
global $db;
$user = $request_data->username;
$password = $request_data->password;
/* var_dump($request_data); */
/* echo "<br>"; */
/* echo "user: "; */
/* var_dump($user); */
/* echo "<br>"; */
/* echo "password: "; */
/* var_dump($password); */
/* echo "<br>"; */
$sql = "SELECT * FROM users;";
$result = $db->query($sql);
?>
