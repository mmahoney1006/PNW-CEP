<?php
function add_cep($name, $information) {
    global $db;
    $query = '
        INSERT INTO CEP_HANDBOOK (Name, Information)
        VALUES (:name, :information)';
    $statement = $db->prepare($query);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':information', $information);
    $statement->execute();
    $id = $db->lastInsertId();
    $statement->closeCursor();
    return $id;
}

function get_ceps() {
    global $db;
    $query = 'SELECT * FROM CEP_HANDBOOK';
    $statement = $db->prepare($query);
    $statement->execute();
    $policies = $statement->fetchAll();
    $statement->closeCursor();
    return $policies;
}


function get_cep($id) {
    global $db;
    $query = 'SELECT * FROM CEP_HANDBOOK WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $policy = $statement->fetch();
    $statement->closeCursor();
    return $policy;
}

function update_cep ($id, $name, $information) {
    global $db;
    $query = '
        UPDATE CEP_HANDBOOK
        SET Name = :name,
            Information = :information
        WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->bindValue(':name', $name);
    $statement->bindValue(':information', $information);
    $statement->execute();
    $statement->closeCursor();
}

function delete_cep($id) {
    global $db;
    $query = 'DELETE FROM CEP_HANDBOOK WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(":id", $id);
    $statement->execute();
    $statement->closeCursor();
}
?>