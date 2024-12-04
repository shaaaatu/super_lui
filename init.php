<?php
class Logger
{
	private $seconds;
	private $microseconds;
	public $logs;

	public function __construct()
	{
		$this->start();
	}

	private function start()
	{
		[$this->microseconds, $this->seconds] = explode(' ', microtime());
		$this->logs = new StdClass;
	}

	public function log($text)
	{
		$this->logs->{$this->getTime()} = $text;
	}

	private function getTime()
	{
		[$logMicroseconds, $logSeconds] = explode(' ', microtime());
		$elapsedSeconds = $logSeconds - $this->seconds;
		$elapsedMicroseconds = $logMicroseconds - $this->microseconds;
		return round($elapsedSeconds + $elapsedMicroseconds, 6);
	}
}
$t = new Logger();
?>
