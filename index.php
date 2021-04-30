<?php
require_once('util/main.php');
//require_once('util/secure_conn.php');
require_once('model/admin_db.php');
require_once('model/fields.php');
require_once('model/validate.php');

$action = filter_input(INPUT_POST, 'action');
if ($action == 'login') {
    $action = 'login';
} else {
    $action = 'view_login';
}

// Set up all possible fields to validate
$validate = new Validate();
$fields = $validate->getFields();

// for the Add Account page and other pages
$fields->addField('email');
$fields->addField('password_1');
$fields->addField('password_2');
$fields->addField('first_name');
$fields->addField('last_name');

// for the Login page
$fields->addField('password');

switch ($action) {
    case 'view_login':
        // Clear login data
        $email = '';
        $password = '';
        $password_message = '';
        break;
		
    case 'login':
        // Get username/password
        $email = filter_input(INPUT_POST, 'email');
        $password = filter_input(INPUT_POST, 'password');
        
        // Validate user data       
        $validate->email('email', $email);
        $validate->text('password', $password, true, 6, 30);        

        // If validation errors, redisplay Login page and exit controller
        if ($fields->hasErrors()) {
            break;
        }
        
        // Check database - if valid username/password, log in
        if (is_valid_admin_login($email, $password)) {
            $_SESSION['admin'] = get_admin_by_email($email);
        } else {
            $password_message = 'Login failed. Invalid email or password.';
            break;
        }

        // Display Admin Menu page
        redirect('admin');
        break;
    default:
        display_error('Unknown account action: ' . $action);
        break;
}


// Display the home page
include('home_view.php');
?>