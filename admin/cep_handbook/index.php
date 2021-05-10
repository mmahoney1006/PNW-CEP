<?php
require_once('../../util/main.php');
require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/cep_handbook_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_ceps';
    }
}

switch ($action) {
    case 'list_ceps':
        $ceps = get_ceps();

        // display policy list
        include('cep_list.php');
        break;
		
    case 'cep_policy':
        $cep_id = filter_input(INPUT_POST, 'cep_id', 
                FILTER_VALIDATE_INT);
		if ($cep_id === null) {
			$cep_id = filter_input(INPUT_GET, 'cep_id', 
					FILTER_VALIDATE_INT);
		}
        delete_cep($cep_id);
		$ceps = get_ceps();
		include('cep_list.php');
        break;
		
    case 'show_add_edit_form':
        $cep_id = filter_input(INPUT_GET, 'cep_id', 
                FILTER_VALIDATE_INT);
        if ($cep_id === null) {
            $cep_id = filter_input(INPUT_POST, 'cep_id', 
                    FILTER_VALIDATE_INT);
        }
        $cep = get_cep($cep_id);
        include('cep_add_edit.php');
        break;
		
    case 'add_cep':
		$name = filter_input(INPUT_POST, 'name');
		$section = filter_input(INPUT_POST, 'section');
		$information = filter_input(INPUT_POST, 'information');
		
		
        // Validate inputs
        if (empty($name) || empty($section) || empty($information)) {
            $error = 'Invalid policy data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $cep_id = add_cep($name, $section, $information);
            $ceps = get_ceps();
			include('cep_list.php');
        }
        break;
		
    case 'update_cep':
		$cep_id = filter_input(INPUT_POST, 'cep_id', 
				FILTER_VALIDATE_INT);
		$name = filter_input(INPUT_POST, 'name');
		$information = filter_input(INPUT_POST, 'information');
		
		
        // Validate inputs
        if (empty($name) || empty($information)) {
            $error = 'Invalid policy data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_cep($cep_id, $name, $information);
            $ceps = get_ceps();
            include('cep_list.php');
        }
        break;
}
?>