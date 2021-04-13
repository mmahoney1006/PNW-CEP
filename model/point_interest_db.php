<?php

function get_pois() {
	global $db;
	$query = 'SELECT * FROM POINT_INTEREST';
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();
        $statement->closeCursor();
        return $result;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}
	

function get_poi($id) {
    global $db;
    $query = '
        SELECT *
        FROM POINT_INTEREST
        WHERE ID = :id';
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':id', $id);
        $statement->execute();
        $result = $statement->fetch();
        $statement->closeCursor();
        return $result;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}

function add_poi($name, $address, $contact, $phonenum, $description, $link) {
    global $db;
    $query = 'INSERT INTO POINT_INTEREST
                 (Name, Address, Contact, PhoneNum, Description, Link)
              VALUES
                 (:name, :address, :contact, :phonenum, :description, :link)';
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':name', $name);
        $statement->bindValue(':address', $address);
        $statement->bindValue(':contact', $contact);
        $statement->bindValue(':phonenum', $phonenum);
        $statement->bindValue(':description', $description);
        $statement->bindValue(':link', $link);
        $statement->execute();
        $statement->closeCursor();
        $id = $db->lastInsertId();
        return $id;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}

function update_poi($id, $name, $address, $contact, $phonenum, $description, $link) {
    global $db;
    $query = '
        UPDATE POINT_INTEREST
        SET Name = :name,
            Address = :address,
			Contact = :contact,
			PhoneNum = :phonenum,
			Description = :description,
			Link = :link
        WHERE ID = :id';
    try {
        $statement = $db->prepare($query);
		$statement->bindValue(':id', $id);
        $statement->bindValue(':name', $name);
        $statement->bindValue(':address', $address);
        $statement->bindValue(':contact', $contact);
        $statement->bindValue(':phonenum', $phonenum);
        $statement->bindValue(':description', $description);
        $statement->bindValue(':link', $link);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}

function delete_poi($id) {
    global $db;
    $query = 'DELETE FROM POINT_INTEREST WHERE ID = :id';
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':id', $id);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}
?>