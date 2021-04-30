<?php
require_once('../../util/main.php');
//require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/campus_db.php');
require_once('model/point_interest_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_pois';
    }
}

switch ($action) {
    case 'list_pois':
        $pois = get_pois();

        // display poi list
        include('poi_list.php');
        break;
		
    case 'delete_poi':
        $poi_id = filter_input(INPUT_POST, 'poi_id', 
                FILTER_VALIDATE_INT);
		if ($poi_id === null) {
			$poi_id = filter_input(INPUT_GET, 'poi_id', 
					FILTER_VALIDATE_INT);
		}
        delete_poi($poi_id);
		$pois = get_pois();
		include('poi_list.php');
        break;
		
    case 'show_add_edit_form':
        $poi_id = filter_input(INPUT_GET, 'poi_id', 
                FILTER_VALIDATE_INT);
        if ($poi_id === null) {
            $poi_id = filter_input(INPUT_POST, 'poi_id', 
                    FILTER_VALIDATE_INT);
        }
        $poi = get_poi($poi_id);
		$campuses = get_campuses();
        include('poi_add_edit.php');
        break;
		
    case 'add_poi':
		$name = filter_input(INPUT_POST, 'name');
		$campus = filter_input(INPUT_POST, 'campus_id', FILTER_VALIDATE_INT);
		$address = filter_input(INPUT_POST, 'address');
		$contact = filter_input(INPUT_POST, 'contact');
		$phonenum = filter_input(INPUT_POST, 'phonenum');
		$description = filter_input(INPUT_POST, 'description');
		$link = filter_input(INPUT_POST, 'link');
		
		
        // Validate inputs
        if (empty($name) || empty($address)) {
            $error = 'Invalid location data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $poi_id = add_poi($name, $campus, $address, $contact, $phonenum, $description, $link);
            $pois = get_pois();
			include('poi_list.php');
        }
        break;
		
    case 'update_poi':
		$poi_id = filter_input(INPUT_POST, 'poi_id', 
				FILTER_VALIDATE_INT);
		$name = filter_input(INPUT_POST, 'name');
		$campus = filter_input(INPUT_POST, 'campus_id', FILTER_VALIDATE_INT);
		$address = filter_input(INPUT_POST, 'address');
		$contact = filter_input(INPUT_POST, 'contact');
		$phonenum = filter_input(INPUT_POST, 'phonenum');
		$description = filter_input(INPUT_POST, 'description');
		$link = filter_input(INPUT_POST, 'link');
		
		
        // Validate inputs
        if (empty($name) || empty($address)) {
            $error = 'Invalid location data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_poi($poi_id, $name, $campus, $address, $contact, $phonenum, $description, $link);
            $pois = get_pois();
            include('poi_list.php');
        }
        break;
}
?>