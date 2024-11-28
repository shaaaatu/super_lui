<?php
require_once $_SERVER['DOCUMENT_ROOT'] .'/config.super.php';

function excecuteRequest($request_type)
{
    global $service;
    global $output;

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
