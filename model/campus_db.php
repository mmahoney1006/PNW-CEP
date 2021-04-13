<?php
function add_campus($name, $address, $phonenum) {
    global $db;
    $query = '
        INSERT INTO CAMPUS (Name, Address, PhoneNum)
        VALUES (:name, :address, :phonenum)';
    $statement = $db->prepare($query);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':address', $address);
    $statement->bindValue(':phonenum', $phonenum);
    $statement->execute();
    $id = $db->lastInsertId();
    $statement->closeCursor();
    return $id;
}

function get_campuses() {
	global $db;
	$query = 'SELECT * FROM CAMPUS';
    $statement = $db->prepare($query);
    $statement->execute();
    $campuses = $statement->fetchAll();
    $statement->closeCursor();
    return $campuses;
}

function get_campus($id) {
    global $db;
    $query = 'SELECT * FROM CAMPUS WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $campus = $statement->fetch();
    $statement->closeCursor();
    return $campus;
}

function update_campus($id, $name, $address, $phonenum) {
    global $db;
    $query = '
        UPDATE CAMPUS
        SET Name = :name,
            Address = :address,
			PhoneNum = :phonenum
        WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':address', $address);
    $statement->bindValue(':phonenum', $phonenum);
    $statement->execute();
    $statement->closeCursor();
}

function delete_campus($id) {
    global $db;
    $query = '
		DELETE FROM CAMPUS 
		WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $statement->closeCursor();
}
?>