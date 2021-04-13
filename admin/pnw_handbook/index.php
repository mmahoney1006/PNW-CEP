<?php
require_once('../../util/main.php');
require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/pnw_handbook_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_policies';
    }
}

switch ($action) {
    case 'list_policies':
        $policies = get_policies();

        // display policy list
        include('policy_list.php');
        break;
		
    case 'delete_policy':
        $policy_id = filter_input(INPUT_POST, 'policy_id', 
                FILTER_VALIDATE_INT);
		if ($policy_id === null) {
			$policy_id = filter_input(INPUT_GET, 'policy_id', 
					FILTER_VALIDATE_INT);
		}
        delete_policy($policy_id);
		$policies = get_policies();
		include('policy_list.php');
        break;
		
    case 'show_add_edit_form':
        $policy_id = filter_input(INPUT_GET, 'policy_id', 
                FILTER_VALIDATE_INT);
        if ($policy_id === null) {
            $policy_id = filter_input(INPUT_POST, 'policy_id', 
                    FILTER_VALIDATE_INT);
        }
        $policy = get_policy($policy_id);
        include('policy_add_edit.php');
        break;
		
    case 'add_policy':
		$name = filter_input(INPUT_POST, 'name');
		$section = filter_input(INPUT_POST, 'section');
		$information = filter_input(INPUT_POST, 'information');
		
		
        // Validate inputs
        if (empty($name) || empty($title)) {
            $error = 'Invalid policy data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $policy_id = add_policy($name, $section, $information);
            $policies = get_policies();
			include('policy_list.php');
        }
        break;
		
    case 'update_policy':
		$policy_id = filter_input(INPUT_POST, 'policy_id', 
				FILTER_VALIDATE_INT);
		$name = filter_input(INPUT_POST, 'name');
		$section = filter_input(INPUT_POST, 'section');
		$information = filter_input(INPUT_POST, 'information');
		
		
        // Validate inputs
        if (empty($name) || empty($section) || empty($information)) {
            $error = 'Invalid policy data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_policy($policy_id, $name, $section, $information);
            $policies = get_policies();
            include('policy_list.php');
        }
        break;
}
?>