<?php
class Authentication
{
	private static $instance = null;
	private $db;
	private $ssid;
	/* private $data; */
	private $id;
	private $permission;

	private function __construct($db, $ssid)
	{
		$this->ssid = $ssid;
		$this->db = $db;
		$this->id = 0;
		$this->permission = 51;
	}

	public static function getInstance($db, $ssid)
	{
		if (self::$instance === null)
			self::$instance = new Authentication($db, $ssid);
		return (self::$instance);
	}

	public function authenticate()
	{
		global $t;

		$row = $this->getSessionData();
		if ($this->isRowEmpty($row))
		{
			$t->log("row empty");
			return ;
		}
		if ($this->isSessionExpired($row['lastused']))
		{
			$t->log("session expired");
			$this->logout($row['id']);
			return ;
		}
		$this->updateLastusedTime($row['id']);
		$this->permission = $row['users_permission'];
		return ;
	}

	private function getSessionData()
	{
		global $t;

		$sql = "SELECT * FROM logins WHERE token = '{$this->ssid}' AND valid = 1";
		$result = $this->db->query($sql);
		if (!$result)
		{
			$t->log("SQL failed");
			outputResult([], $t->logs);
			exit();
		}
		return $result->fetch_assoc();
	}

	private function isRowEmpty($row)
	{
		global $t;

		if (empty($row))
		{
			$t->log("permission unchanged");
			return true;
		}
		return false;
	}

	private function isSessionExpired($lastUsedTime)
    {
        $time = strtotime($lastUsedTime);
        $now = strtotime("now");
        return ($now - $time) > 200000;
    }

	private function updateLastUsedTime($userId)
	{
		$sql = "UPDATE logins SET lastused = NOW() WHERE users_id = '{$userId}'";
		$this->db->query($sql);
	}

	private function logout($userId)
	{
		$sql = "UPDATE logins SET valid = 0, logoutdatetime = NOW() WHERE users_id = '{$userId}'";
		$this->db->query($sql);
	}

	public function getRequestId()
	{
		return $this->id;
	}

	public function getRequestPermission()
	{
		return $this->permission;
	}
}

function getSsid()
{
	if (isset($_COOKIE['SSID']))
		return $_COOKIE['SSID'];
	return $_POST['request_ssid'] ?? null;
}
?>
