<?php
function add_club($name, $president, $advisor, $description, $email) {
    global $db;
    $query = '
        INSERT INTO CLUBS (Name, President, Advisor, Description, Email)
        VALUES (:name, :president, :advisor, :description, :email)';
    $statement = $db->prepare($query);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':president', $president);
    $statement->bindValue(':advisor', $advisor);
	$statement->bindValue(':description', $description);
	$statement->bindValue(':email', $email);
    $statement->execute();
    $id = $db->lastInsertId();
    $statement->closeCursor();
    return $id;
}

function get_clubs() {
	global $db;
	$query = 'SELECT * FROM CLUBS';
	$statement = $db->prepare($query);
	$statement->execute();
	$clubs = $statement->fetchAll();
	$statement->closeCursor();
	return $clubs;
}

function get_club($id) {
    global $db;
    $query = 'SELECT * FROM CLUBS WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $club = $statement->fetch();
    $statement->closeCursor();
    return $club;
}

function update_club($id, $name, $president, $advisor, $description, $email) {
    global $db;
    $query = '
        UPDATE CLUBS
        SET Name = :name,
            President = :president,
			Advisor = :advisor,
            Description = :description,
			Email = :email
        WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':president', $president);
    $statement->bindValue(':advisor', $advisor);
	$statement->bindValue(':description', $description);
	$statement->bindValue(':email', $email);
    $statement->execute();
    $statement->closeCursor();
}

function delete_club($id) {
    global $db;
    $query = 'DELETE FROM CLUBS WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(":id", $id);
    $statement->execute();
    $statement->closeCursor();
}
?>