<?php
function add_course($name, $title, $description) {
    global $db;
    $query = '
        INSERT INTO COURSES (Name, Title, Description)
        VALUES (:name, :title, :description)';
    $statement = $db->prepare($query);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':title', $title);
    $statement->bindValue(':description', $description);
    $statement->execute();
    $id = $db->lastInsertId();
    $statement->closeCursor();
    return $id;
}

function get_courses() {
    global $db;
    $query = 'SELECT * FROM COURSES';
    $statement = $db->prepare($query);
    $statement->execute();
    $courses = $statement->fetchAll();
    $statement->closeCursor();
    return $courses;
}


function get_course($id) {
    global $db;
    $query = 'SELECT * FROM COURSES WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $course = $statement->fetch();
    $statement->closeCursor();
    return $course;
}

function update_course ($id, $name, $title, $description) {
    global $db;
    $query = '
        UPDATE COURSES
        SET Name = :name,
            Title = :title,
            Description = :description
        WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':title', $title);
    $statement->bindValue(':description', $description);
    $statement->execute();
    $statement->closeCursor();
}

function delete_course($id) {
    global $db;
    $query = 'DELETE FROM COURSES WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(":id", $id);
    $statement->execute();
    $statement->closeCursor();
}
?>