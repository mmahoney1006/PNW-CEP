<?php
require_once('../../util/main.php');
require_once('util/secure_conn.php');
require_once('util/valid_admin.php');
require_once('model/courses_db.php');

$action = strtolower(filter_input(INPUT_POST, 'action'));
if ($action == NULL) {
    $action = strtolower(filter_input(INPUT_GET, 'action'));
    if ($action == NULL) {        
        $action = 'list_courses';
    }
}

switch ($action) {
    case 'list_courses':
        $courses = get_courses();

        // display course list
        include('course_list.php');
        break;
		
    case 'delete_course':
        $course_id = filter_input(INPUT_POST, 'course_id', 
                FILTER_VALIDATE_INT);
		if ($course_id === null) {
			$course_id = filter_input(INPUT_GET, 'course_id', 
					FILTER_VALIDATE_INT);
		}
        delete_course($course_id);
		$courses = get_courses();
		include('course_list.php');
        break;
		
    case 'show_add_edit_form':
        $course_id = filter_input(INPUT_GET, 'course_id', 
                FILTER_VALIDATE_INT);
        if ($course_id === null) {
            $course_id = filter_input(INPUT_POST, 'course_id', 
                    FILTER_VALIDATE_INT);
        }
        $course = get_course($course_id);
        include('course_add_edit.php');
        break;
		
    case 'add_course':
		$name = filter_input(INPUT_POST, 'name');
		$title = filter_input(INPUT_POST, 'title');
		$description = filter_input(INPUT_POST, 'description');
		
		
        // Validate inputs
        if (empty($name) || empty($title)) {
            $error = 'Invalid course data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            $course_id = add_course($name, $title, $description);
            $courses = get_courses();
			include('course_list.php');
        }
        break;
		
    case 'update_course':
		$course_id = filter_input(INPUT_POST, 'course_id', 
				FILTER_VALIDATE_INT);
		$name = filter_input(INPUT_POST, 'name');
		$title = filter_input(INPUT_POST, 'title');
		$description = filter_input(INPUT_POST, 'description');
		
		
        // Validate inputs
        if (empty($name) || empty($title)) {
            $error = 'Invalid course data.
                      Check all fields and try again.';
            include('../../errors/error.php');
        } else {
            update_course($course_id, $name, $title, $description);
            $courses = get_courses();
            include('course_list.php');
        }
        break;
}
?>