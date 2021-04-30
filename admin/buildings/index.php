<?php
require_once('../../util/main.php');
//require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/campus_db.php');
require_once('model/buildings_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_buildings';
    }
}

switch ($action) {
    case 'list_buildings':
        $buildings = get_buildings();

        // display building list
        include('building_list.php');
        break;
		
    case 'delete_building':
        $building_id = filter_input(INPUT_POST, 'building_id', 
                FILTER_VALIDATE_INT);
		if ($building_id === null) {
			$building_id = filter_input(INPUT_GET, 'building_id', 
					FILTER_VALIDATE_INT);
		}
        delete_building($building_id);
		$buildings = get_buildings();
		include('building_list.php');
        break;
		
    case 'show_add_edit_form':
        $building_id = filter_input(INPUT_GET, 'building_id', 
                FILTER_VALIDATE_INT);
        if ($building_id === null) {
            $building_id = filter_input(INPUT_POST, 'building_id', 
                    FILTER_VALIDATE_INT);
        }
        $building = get_building($building_id);
		$campuses = get_campuses();
        include('buildings_add_edit.php');
        break;
		
    case 'add_building':
		$name = filter_input(INPUT_POST, 'name');
		$campus = filter_input(INPUT_POST, 'campus_id', FILTER_VALIDATE_INT);
		$monday = filter_input(INPUT_POST, 'monday');
		$tuesday = filter_input(INPUT_POST, 'tuesday');
		$wednesday = filter_input(INPUT_POST, 'wednesday');
		$thursday = filter_input(INPUT_POST, 'thursday');
		$friday = filter_input(INPUT_POST, 'friday');
		$saturday = filter_input(INPUT_POST, 'saturday');
		$sunday = filter_input(INPUT_POST, 'sunday');
		
		
        // Validate inputs
        if (empty($name) || empty($monday) || empty($tuesday) || 
			empty($wednesday) || empty($thursday) || 
			empty($friday) || empty($saturday) || empty($sunday)) {
            $error = 'Invalid building data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $building_id = add_building($name, $campus, $monday, $tuesday,
							$wednesday, $thursday, $friday, $saturday, $sunday);
            $buildings = get_buildings();
			include('building_list.php');
        }
        break;
		
    case 'update_building':
		$building_id = filter_input(INPUT_POST, 'building_id', FILTER_VALIDATE_INT);
		$name = filter_input(INPUT_POST, 'name');
		$campus = filter_input(INPUT_POST, 'campus_id', FILTER_VALIDATE_INT);
		$monday = filter_input(INPUT_POST, 'monday');
		$tuesday = filter_input(INPUT_POST, 'tuesday');
		$wednesday = filter_input(INPUT_POST, 'wednesday');
		$thursday = filter_input(INPUT_POST, 'thursday');
		$friday = filter_input(INPUT_POST, 'friday');
		$saturday = filter_input(INPUT_POST, 'saturday');
		$sunday = filter_input(INPUT_POST, 'sunday');

        // Validate inputs
        if (empty($name) || empty($monday) || empty($tuesday) || 
			empty($wednesday) || empty($thursday) || 
			empty($friday) || empty($saturday) || empty($sunday)) {
            $error = 'Invalid building data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_building($building_id, $name, $campus, $monday, $tuesday,
							$wednesday, $thursday, $friday, $saturday, $sunday);
            $buildings = get_buildings();
            include('building_list.php');
        }
        break;
}
?>