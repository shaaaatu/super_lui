<?php
require_once $_SERVER['DOCUMENT_ROOT'] .'/config.super.php';

function getHash($password)
{
	$hash = password_hash($password, PASSWORD_DEFAULT);
	return ($hash);
}

function crypto_rand_secure($min, $max)
{
    $range = $max - $min;
    if ($range < 1) return $min; //  not so random...
    $log = ceil(log($range, 2));
    $bytes = (int) ($log / 8) + 1; //  length in bytes
    $bits = (int) $log + 1; //  length in bits
    $filter = (int) (1 << $bits) - 1; //  set all lower bits to 1
    do {
        $rnd = hexdec(bin2hex(openssl_random_pseudo_bytes($bytes)));
        $rnd = $rnd & $filter; //  discard irrelevant bits
    } while ($rnd > $range);
    return $min + $rnd;
}



/*
* This function uses the crypto_rand_secure
* function to generate a random and secure 
* key of $length
*/
function getToken($length)
{
    $token = "";
    $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    $codeAlphabet.= "abcdefghijklmnopqrstuvwxyz";
    $codeAlphabet.= "0123456789";
    $max = strlen($codeAlphabet); //  edited

    for ($i=0; $i < $length; $i++) {
        $token .= $codeAlphabet[crypto_rand_secure(0, $max-1)];
    }

    return $token;
}

function executeRequest($request_type)
{
	global $request_data;
    global $service;
    global $output;
	global $db;

	foreach ($service as $serviceName => $serviceLink)
	{
        global ${$serviceName};
		if(!isset(${$serviceName}))
		{
			echo "The service array for " . $serviceName . " service doesn't exist! Check config file<br>";
            return;
        }
		if(!in_array($request_type, ${$serviceName}))
		{
             echo "Not found in ".$serviceName." service<br>";
             continue;
        }
        echo
            "Request matched for ".
            $serviceName.
            " service>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> <br>"
        ;
		if($serviceLink=="local")
		{
            foreach (glob( $_SERVER['DOCUMENT_ROOT'] ."/service/".$serviceName."/init/*.php") as $filename)
                include $filename;
            include $_SERVER['DOCUMENT_ROOT'] ."/service/".$serviceName."/".$request_type.".php";
		}
		else
		{
            $t->log("Sending request to foreign service :  ".$serviceName);
            $surloutputjson = curl($serviceLink , $request_type , '' , '');
            $output = json_decode($surloutputjson , true);
        }
        echo
            "Data received from the `".
            $serviceName.
            "` service in controller>>>>>>>>>>>>>>>>>>>>>>>>>>>>> <br>";
    }
	return $output;
}
?>
