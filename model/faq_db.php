<?php
function add_faq($question, $answer) {
    global $db;
    $query = '
        INSERT INTO FAQ (Question, Answer)
        VALUES (:question, :answer)';
    $statement = $db->prepare($query);
    $statement->bindValue(':question', $question);
    $statement->bindValue(':answer', $answer);
    $statement->execute();
    $id = $db->lastInsertId();
    $statement->closeCursor();
    return $id;
}

function get_faqs() {
	global $db;
	$query = 'SELECT * FROM FAQ';
	$statement = $db->prepare($query);
	$statement->execute();
	$faqs = $statement->fetchAll();
	$statement->closeCursor();
	return $faqs;
}

function get_faq($id) {
    global $db;
    $query = 'SELECT * FROM FAQ WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $faq = $statement->fetch();
    $statement->closeCursor();
    return $faq;
}

function update_faq($id, $question, $answer) {
    global $db;
    $query = '
        UPDATE FAQ
        SET Question = :question,
            Answer = :answer
        WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->bindValue(':question', $question);
    $statement->bindValue(':answer', $answer);
    $statement->execute();
    $statement->closeCursor();
}

function delete_faq($id) {
    global $db;
    $query = 'DELETE FROM FAQ WHERE ID = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(":id", $id);
    $statement->execute();
    $statement->closeCursor();
}
?>