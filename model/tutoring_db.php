<?php
function get_tutorings() {
    global $db;
    $query = '
        SELECT *
        FROM TUTORING';
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

function get_tutoring($id) {
    global $db;
    $query = '
        SELECT *
        FROM TUTORING
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

function add_tutoring($course, $title, $monday, $tuesday, $wednesday, $thursday, $friday) {
    global $db;
    $query = 'INSERT INTO TUTORING
                 (Course, Title, Monday, Tuesday, Wednesday, Thursday, Friday)
              VALUES
                 (:course, :title, :monday, :tuesday, :wednesday, :thursday, :friday)';
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':course', $course);
        $statement->bindValue(':title', $title);
        $statement->bindValue(':monday', $monday);
        $statement->bindValue(':tuesday', $tuesday);
        $statement->bindValue(':wednesday', $wednesday);
        $statement->bindValue(':thursday', $thursday);
        $statement->bindValue(':friday', $friday);
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

function update_tutoring($id, $course, $title, $monday, $tuesday, $wednesday, $thursday, $friday) {
    global $db;
    $query = '
        UPDATE TUTORING
        SET Course = :course,
			Title = :title,
			Monday = :monday,
			Tuesday = :tuesday,
            Wednesday = :wednesday,
			Thursday = :thursday,
			Friday = :friday
        WHERE ID = :id';

    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':id', $id);
        $statement->bindValue(':course', $course);
        $statement->bindValue(':title', $title);
        $statement->bindValue(':monday', $monday);
        $statement->bindValue(':tuesday', $tuesday);
        $statement->bindValue(':wednesday', $wednesday);
        $statement->bindValue(':thursday', $thursday);
        $statement->bindValue(':friday', $friday);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_db_error($error_message);
    }
}

function delete_tutoring($id) {
    global $db;
    $query = 'DELETE FROM TUTORING WHERE ID = :id';
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