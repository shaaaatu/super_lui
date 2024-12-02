<?php
$offset = $request_data->page * 10;
$sql = "SELECT * FROM dummy LIMIT 10 OFFSET $offset";
$result = $db->query($sql);
while ($row = $result->fetch_assoc())
{
	$row["custom_fields"] = json_decode($row["custom_fields"]);
	$views[] = $row;
}
$output['ichiran'] = $views;
?>
