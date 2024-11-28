<?php
class Authentication
{
	private $db;
	private $ssid;
	/* private $data; */
	private $id;
	private $permission;

	public function __construct($db, $ssid)
	{
		$this->ssid = $ssid;
		$this->db = $db;
		$this->id = 0;
		$this->permission = 51;
	}

	public function authenticate()
	{
		$row = $this->getSessionData();
		/* $this->data = $row; */
		echo "row: " . $row . "<br>";
		if ($this->isRowEmpty($row))
			return ;
		if ($this->isSessionExpired($row['lastused']))
		{
			$this->logout($row['id']);
			return false;
		}
		$this->updateLastusedTime($row['id']);
		$this->permission = $row['permission'];
		return true;
	}

	private function getSessionData()
	{
		$sql = "SELECT * FROM logins WHERE token = '{$this->ssid}' AND valid = 1";
		$result = $this->db->query($sql);
		if (!$result)
		{
			echo "SQL failed";
			exit();
		}
		return $result->fetch_assoc();
	}

	private function isRowEmpty($row)
	{
		if (empty($row))
		{
			echo "permission unchanged<br>";
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
		$sql = "UPDATE logins SET lastused = NOW() WHERE m_users_id = '{$userId}'";
		$this->db->query($sql);
	}

	private function logout($userId)
	{
		$sql = "UPDATE logins SET valid = 0, logoutdatetime = NOW() WHERE m_users_id = '{$userId}'";
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
