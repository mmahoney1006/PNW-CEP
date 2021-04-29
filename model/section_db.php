<?php
function get_sections() {
	global $db;
	$query = 'SELECT * FROM HANDBOOK_SECTIONS';
    $statement = $db->prepare($query);
    $statement->execute();
    $sections = $statement->fetchAll();
    $statement->closeCursor();
    return $sections;
}
?>