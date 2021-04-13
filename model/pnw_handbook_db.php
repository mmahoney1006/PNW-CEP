<?php
function add_policy($name, $section, $information) {
    global $db;
    $query = '
        INSERT INTO PNW_HANDBOOK (Name, Section, Information)
        VALUES (:name, :section, :information)';
    $statement = $db->prepare($query);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':section', $section);
    $statement->bindValue(':information', $information);
    $statement->execute();
    $id = $db->lastInsertId();
    $statement->closeCursor();
    return $id;
}

function get_policies() {
    global $db;
    $query = 'SELECT * FROM PNW_HANDBOOK';
    $statement = $db->prepare($query);
    $statement->execute();
    $policies = $statement->fetchAll();
    $statement->closeCursor();
    return $policies;
}


function get_policy($id) {
    global $db;
    $query = 'SELECT * FROM PNW_HANDBOOK WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $policy = $statement->fetch();
    $statement->closeCursor();
    return $policy;
}

function update_policy ($id, $name, $section, $information) {
    global $db;
    $query = '
        UPDATE PNW_HANDBOOK
        SET Name = :name,
            Section = :section,
            Information = :information
        WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':section', $section);
    $statement->bindValue(':information', $information);
    $statement->execute();
    $statement->closeCursor();
}

function delete_policy($id) {
    global $db;
    $query = 'DELETE FROM PNW_HANDBOOK WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(":id", $id);
    $statement->execute();
    $statement->closeCursor();
}
?>