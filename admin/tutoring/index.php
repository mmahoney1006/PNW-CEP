<?php
require_once('../../util/main.php');
require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/tutoring_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_tutoring';
    }
}

switch ($action) {
    case 'list_tutoring':
        $tutorings = get_tutorings();

        // display building list
        include('tutoring_list.php');
        break;
		
    case 'delete_tutoring':
        $tutoring_id = filter_input(INPUT_POST, 'tutoring_id', 
                FILTER_VALIDATE_INT);
		if ($tutoring_id === null) {
			$tutoring_id = filter_input(INPUT_GET, 'tutoring_id', 
					FILTER_VALIDATE_INT);
		}
        delete_tutoring($tutoring_id);
		$tutorings = get_tutorings();
		include('tutoring_list.php');
        break;
		
    case 'show_add_edit_form':
        $tutoring_id = filter_input(INPUT_GET, 'tutoring_id', 
                FILTER_VALIDATE_INT);
        if ($tutoring_id === null) {
            $tutoring_id = filter_input(INPUT_POST, 'tutoring_id', 
                    FILTER_VALIDATE_INT);
        }
        $tutoring = get_tutoring($tutoring_id);
        include('tutoring_add_edit.php');
        break;
		
    case 'add_tutoring':
		$course = filter_input(INPUT_POST, 'course');
		$title = filter_input(INPUT_POST, 'title');
		$monday = filter_input(INPUT_POST, 'monday');
		$tuesday = filter_input(INPUT_POST, 'tuesday');
		$wednesday = filter_input(INPUT_POST, 'wednesday');
		$thursday = filter_input(INPUT_POST, 'thursday');
		$friday = filter_input(INPUT_POST, 'friday');
		
		
        // Validate inputs
        if (empty($course) || empty($title) || empty($monday) || empty($tuesday) || 
			empty($wednesday) || empty($thursday) || empty($friday)) {
            $error = 'Invalid tutoring data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $tutoring_id = add_tutoring($course, $title, $monday, $tuesday,
							$wednesday, $thursday, $friday);
            $tutorings = get_tutorings();
			include('tutoring_list.php');
        }
        break;
		
    case 'update_tutoring':
		$tutoring_id = filter_input(INPUT_POST, 'tutoring_id', FILTER_VALIDATE_INT);
		$course = filter_input(INPUT_POST, 'course');
		$title = filter_input(INPUT_POST, 'title');
		$monday = filter_input(INPUT_POST, 'monday');
		$tuesday = filter_input(INPUT_POST, 'tuesday');
		$wednesday = filter_input(INPUT_POST, 'wednesday');
		$thursday = filter_input(INPUT_POST, 'thursday');
		$friday = filter_input(INPUT_POST, 'friday');

        // Validate inputs
        if (empty($course) || empty($title) || empty($monday) || empty($tuesday) || 
			empty($wednesday) || empty($thursday) || empty($friday)) {
            $error = 'Invalid tutoring data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_building($course, $title, $monday, $tuesday,
							$wednesday, $thursday, $friday);
            $tutorings = get_tutorings();
			include('tutoring_list.php');
        }
        break;
}
?>