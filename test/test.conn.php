<?php
$url = 'http://localhost:8001/api.php';
$testData = [
	[
		'request' => ['request_type' => 'hello', 'request_ssid' => '', 'request_data' => '{"test":"1"}'],
		'expected_response' => "Hello World! Looks like the API is working fine!"
	],
	[
		'request' => ['request_type' => 'login', 'request_ssid' => '', 'request_data' => '{"test":"1"}'],
		'expected_response' => 'email or password not set'
	],
	[
		'request' => ['request_type' => 'login', 'request_ssid' => '', 'request_data' => '{"test":"1","email":"test@gmail.com","password":"notcorrect"}'],
		'expected_response' => 'password is not correct'
	],
	[
		'request' => ['request_type' => 'login', 'request_ssid' => '', 'request_data' => '{"test":"1","email":"notcorrect@gmail.com","password":"pass"}'],
		'expected_response' => 'email is not correct'
	],
	[
		'request' => ['request_type' => 'login', 'request_ssid' => '', 'request_data' => '{"test":"1","email":"test@gmail.com","password":"pass"}'],
		'expected_response' => 'login successfully!!!'
	],
	[
		'request' => ['request_type' => 'login', 'request_ssid' => '', 'request_data' => '{"test":"1","email":"test@gmail.com","password":"pass"}'],
		'expected_response' => 'login successfully!!!'
	],
	[
		'request' => ['request_type' => 'logout', 'request_ssid' => '', 'request_data' => '{"test":"1","email":"test@gmail.com","password":"pass"}'],
		'expected_response' => 'logout successful'
	],
];
?>
