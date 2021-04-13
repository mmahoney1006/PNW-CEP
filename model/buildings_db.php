<?php
function get_buildings() {
    global $db;
    $query = '
        SELECT * FROM BUILDINGS';
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

function get_building($id) {
    global $db;
    $query = '
        SELECT *
        FROM BUILDINGS
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

function add_building($name, $campus, $monday, $tuesday, $wednesday, 
						$thursday, $friday, $saturday, $sunday) {
    global $db;
    $query = 'INSERT INTO BUILDINGS
                 (Name, Campus, Monday, Tuesday, Wednesday, 
				 Thursday, Friday, Saturday, Sunday)
              VALUES
                 (:name, :campus, :monday, :tuesday, :wednesday, 
				 :thursday, :friday, :saturday, :sunday)';
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':name', $name);
        $statement->bindValue(':campus', $campus);
        $statement->bindValue(':monday', $monday);
        $statement->bindValue(':tuesday', $tuesday);
        $statement->bindValue(':wednesday', $wednesday);
        $statement->bindValue(':thursday', $thursday);
        $statement->bindValue(':friday', $friday);
        $statement->bindValue(':saturday', $saturday);
        $statement->bindValue(':sunday', $sunday);
        $statement->execute();
        $statement->closeCursor();

        // Get the last product ID that was automatically generated
        $id = $db->lastInsertId();
        return $id;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}

function update_building($id, $name, $campus, $monday, $tuesday, $wednesday, 
						$thursday, $friday, $saturday, $sunday) {
    global $db;
    $query = '
        UPDATE BUILDINGS
        SET Name = :name,
            Campus = :campus,
            Monday = :monday,
            Tuesday = :tuesday,
            Wednesday = :wednesday,
			Thursday = :thursday,
			Friday = :friday,
			Saturday = :saturday,
			Sunday = :sunday
        WHERE ID = :id';
    try {
        $statement = $db->prepare($query);
		$statement->bindValue(':id', $id);
        $statement->bindValue(':name', $name);
        $statement->bindValue(':campus', $campus);
        $statement->bindValue(':monday', $monday);
        $statement->bindValue(':tuesday', $tuesday);
        $statement->bindValue(':wednesday', $wednesday);
        $statement->bindValue(':thursday', $thursday);
        $statement->bindValue(':friday', $friday);
        $statement->bindValue(':saturday', $saturday);
        $statement->bindValue(':sunday', $sunday);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}

function delete_building($id) {
    global $db;
    $query = 'DELETE FROM BUILDINGS WHERE ID = :id';
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