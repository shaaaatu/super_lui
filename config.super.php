<?php
$service = array(
	"login"=>"local" ,
	/* "category"=>"local" , */
	/* "image"=>"local" , */
	"test"=>"local" ,
	/* "example"=>"local" , */

	/* "admin"=>"local" , */ 
	"user"=>"local" , 
	/* "view"=>"local" , */ 
	"search"=>"local" ,
	/* "contracts"=>"local" , */
	// "critikerapi"=>"https://www.critiker.com/critiker.api.php" ,

);

	$login = [
		'login',
		"gen_token",
		'logout',
	];

	$test = [
		"hello"  ,
		"check_login" ,
		'read_log' ,
		'check_db' ,
	];

	$user = [
		'create_user'
	];

	$search = [
		'search'
	];

	$commands[1] = [
		//test API
		'hello' ,
		'check_login',

		//login
		'logout' ,
		'logout_all' ,
		'add_category' ,

		//test API
		'only_paying_users' ,
		'extract' , 

		//search
		'search',
	];


//Permissions
	$commands[50] = [
		//test API
		'hello' ,
		'check_login',

		//login
		'logout' ,
		'logout_all' ,
		'add_category' ,

		//test API
		'only_paying_users' ,
		'extract' , 

		//search
		'search',
	];


	//Not logged in!
	$commands[51] = [

		// Admin API
		// NEVER DO THIS IN PRODUCTION
		// I REPEAT, NEVER
		'update_password' ,
		'new_user' ,

		// category API
		"custom_fields" ,
		"insert_data" ,
		"validate_custom_fields" ,

		//login API
		'login' ,
		'logout',
		'test_push' ,
		'test_mail' ,
		'gen_token' ,
		'login_from_token' ,

		'password_update' ,

		//image
		'create_thumbs' ,
		'create_thumbs_test' ,

		//test API
		'hello' ,
		'check_login' ,
		'read_log' ,
		'check_db' ,

		// search API
		"search_by_category" ,
		"search_by_city" ,
		"search_by_freetext" ,

		// user
		"create_user",
		"register" ,
		"reset_password_1" ,
		"reset_password_2" ,

		// view
		"view_map" ,

		// user
		"show_userinfo" ,

		//example API
		'test_verbose' ,
		'json_gen' ,
		'json_gen_big' ,
		"hellocritiker" ,
		"mysqli_connect" ,
		"pdo_connect" ,
		"mysql_transactions" ,
		"permission_based_logic" ,
		"fetch_input" ,

	];
?>
