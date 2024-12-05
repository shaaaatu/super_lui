<?php
require_once dirname(__FILE__) . '/test.conn.php';

function progress()
{
	global $testData;
	global $ch;
	global $passedTests;
	global $totalTests;
	global $barLength;

	foreach ($testData as $index => $data)
	{
		curl_setopt($ch, CURLOPT_URL, "http://localhost:8001/api.php");
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data['request']);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$response = curl_exec($ch);

		if ($response === false)
		{
			echo "curl error: " . curl_error($ch) . "\n";
			continue ;
		}
		if ($response == $data['expected_response'])
			$passedTests++;
		else
		{
				echo "\n\033[31mTest failed for request_type = {$data['request']['request_type']}.\n";
				echo "Expected: {$data['expected_response']}\n";
				echo "Got: $response\n";
				echo "\033[0m";
				return ;
		}
		$progress = (($index + 1) / $totalTests) * 100;
		$completed = round(($index + 1) / $totalTests * $barLength);
		$progressBar = str_repeat('=', $completed) . str_repeat(' ', $barLength - $completed);
		echo "\r[" . $progressBar . "] " . round($progress) . "%";
		flush();
	}
}

$totalTests = count($testData);
$passedTests = 0;
$barLength = 50;
$progressBar = str_repeat(' ', $barLength);

echo "Running Tests...\n";
echo "[" . $progressBar . "] 0%";
flush();
$ch = curl_init();
progress();
curl_close($ch);
echo "\n\n\033[1;34mTest Summary:\033[0m\n";
echo "Total Tests: $totalTests\n";
echo "Passed: $passedTests\n";
echo "Failed: " . ($totalTests - $passedTests) . "\n";
?>
