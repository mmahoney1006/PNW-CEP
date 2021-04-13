<?php
require_once('../../util/main.php');
require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/campus_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_campus';
    }
}

switch ($action) {
    case 'list_campus':
        $campuses = get_campuses();

        // display campus list
        include('campus_list.php');
        break;
		
    case 'delete_campus':
        $campus_id = filter_input(INPUT_POST, 'campus_id', 
                FILTER_VALIDATE_INT);
		if ($campus_id === null) {
			$campus_id = filter_input(INPUT_GET, 'campus_id',
					FILTER_VALIDATE_INT);
		}
        delete_campus($campus_id);
        $campuses = get_campuses();
		include('campus_list.php');
        break;
		
    case 'show_add_edit_form':
        $campus_id = filter_input(INPUT_GET, 'campus_id', 
                FILTER_VALIDATE_INT);
        if ($campus_id === null) {
            $campus_id = filter_input(INPUT_POST, 'campus_id', 
                    FILTER_VALIDATE_INT);
        }
        $campus = get_campus($campus_id);
        include('campus_add_edit.php');
        break;
		
    case 'add_campus':
        $name = filter_input(INPUT_POST, 'name');
        $address = filter_input(INPUT_POST, 'address');
        $phonenum = filter_input(INPUT_POST, 'phonenum');

        // Validate inputs
        if (empty($name) || empty($address) || empty($phonenum)) {
            $error = 'Invalid campus data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $campus_id = add_campus($name, $address, $phonenum);
            $campuses = get_campuses();
            include('campus_list.php');
        }
        break;
    case 'update_campus':
        $campus_id = filter_input(INPUT_POST, 'campus_id', 
                FILTER_VALIDATE_INT);
        $name = filter_input(INPUT_POST, 'name');
        $address = filter_input(INPUT_POST, 'address');
        $phonenum = filter_input(INPUT_POST, 'phonenum');

        // Validate inputs
        if (empty($name) || empty($address) || empty($phonenum)) {
            $error = 'Invalid campus data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_campus($campus_id, $name, $address, $phonenum);
            $campuses = get_campuses();
            include('campus_list.php');
        }
        break;
}
?>