<?php
require_once('../../util/main.php');
//require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/clubs_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_clubs';
    }
}

switch ($action) {
    case 'list_clubs':
        $clubs = get_clubs();

        // display club list
        include('clubs_list.php');
        break;
		
    case 'delete_club':
        $club_id = filter_input(INPUT_POST, 'club_id', 
                FILTER_VALIDATE_INT);
		if ($club_id === null) {
			$club_id = filter_input(INPUT_GET, 'club_id', 
					FILTER_VALIDATE_INT);
		}
        delete_club($club_id);
		$clubs = get_clubs();
		include('clubs_list.php');
        break;
		
    case 'show_add_edit_form':
        $club_id = filter_input(INPUT_GET, 'club_id', 
                FILTER_VALIDATE_INT);
        if ($club_id === null) {
            $club_id = filter_input(INPUT_POST, 'club_id', 
                    FILTER_VALIDATE_INT);
        }
        $club = get_club($club_id);
        include('clubs_add_edit.php');
        break;
		
    case 'add_club':
		$name = filter_input(INPUT_POST, 'name');
		$president = filter_input(INPUT_POST, 'president');
		$advisor = filter_input(INPUT_POST, 'advisor');
		$description = filter_input(INPUT_POST, 'description');
		$email = filter_input(INPUT_POST, 'email');
		
		
        // Validate inputs
        if (empty($name)) {
            $error = 'Invalid club data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $club_id = add_club($name, $president, $advisor, 
					$description, $email);
            $clubs = get_clubs();
			include('clubs_list.php');
        }
        break;
		
    case 'update_club':
		$club_id = filter_input(INPUT_POST, 'club_id', 
				FILTER_VALIDATE_INT);
		$name = filter_input(INPUT_POST, 'name');
		$president = filter_input(INPUT_POST, 'president');
		$advisor = filter_input(INPUT_POST, 'advisor');
		$description = filter_input(INPUT_POST, 'description');
		$email = filter_input(INPUT_POST, 'email');
		
		
        // Validate inputs
        if (empty($name)) {
            $error = 'Invalid club data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_club($club_id, $name, $president, $advisor, 
					$description, $email);
            $clubs = get_clubs();
            include('clubs_list.php');
        }
        break;
}
?>