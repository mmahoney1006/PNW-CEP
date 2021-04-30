<?php
require_once('../../util/main.php');
//require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/faq_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_faq';
    }
}

switch ($action) {
    case 'list_faq':
        $faqs = get_faqs();

        // display faq list
        include('faq_list.php');
        break;
		
    case 'delete_faq':
        $faq_id = filter_input(INPUT_POST, 'faq_id', 
                FILTER_VALIDATE_INT);
		if ($faq_id === null) {
			$faq_id = filter_input(INPUT_GET, 'faq_id', 
					FILTER_VALIDATE_INT);
		}
        delete_faq($faq_id);
		$faqs = get_faqs();
		include('faq_list.php');
        break;
		
    case 'show_add_edit_form':
        $faq_id = filter_input(INPUT_GET, 'faq_id', 
                FILTER_VALIDATE_INT);
        if ($faq_id === null) {
            $faq_id = filter_input(INPUT_POST, 'faq_id', 
                    FILTER_VALIDATE_INT);
        }
        $faq = get_faq($faq_id);
        include('faq_add_edit.php');
        break;
		
    case 'add_faq':
		$question = filter_input(INPUT_POST, 'question');
		$answer = filter_input(INPUT_POST, 'answer');
		
        // Validate inputs
        if (empty($question) || empty($answer)) {
            $error = 'Invalid FAQ data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $faq_id = add_faq($question, $answer);
            $faqs = get_faqs();
			include('faq_list.php');
        }
        break;
		
    case 'update_faq':
		$faq_id = filter_input(INPUT_POST, 'faq_id', 
				FILTER_VALIDATE_INT);
		$question = filter_input(INPUT_POST, 'question');
		$answer = filter_input(INPUT_POST, 'answer');

        // Validate inputs
        if (empty($question) || empty($answer)) {
            $error = 'Invalid FAQ data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_faq($faq_id, $question, $answer);
            $faqs = get_faqs();
            include('faq_list.php');
        }
        break;
}
?>