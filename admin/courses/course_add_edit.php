<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($course_id)) {
        $heading_text = 'Edit Course';
    } else {
        $heading_text = 'Add Course';
    }
    ?>
    <h1>Course Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_course_form">
        <?php if (isset($course_id)) : ?>
            <input type="hidden" name="action" value="update_course">
            <input type="hidden" name="course_id"
                   value="<?php echo $course_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_course">
        <?php endif; ?>
		<label>*Required Fields</label>
		<br>
		<br>
		
		<label>*Course:</label>
		<?php
		if (isset($course_id)) { ?>
			<input type="text" name="name"
			value="<?php echo htmlspecialchars($course['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
		<br>
		
		<label>*Title:</label>
		<?php
		if (isset($course_id)) { ?>
			<input type="text" name="title" size="50"
			value="<?php echo htmlspecialchars($course['Title']); ?>">
		<?php } else { ?>
			<input type="text" name="title" value="">
		<?php } ?>
		<br>
			
		<label>Description:</label>
		<?php
		if (isset($course_id)) { ?>
			<textarea name="description" rows="10" cols="50"><?php echo $course['Description']; ?></textarea>
		<?php } else { ?>
			<textarea name="description" rows="10" cols="50"></textarea>
		<?php } ?>
		<br>
		
		<label>&nbsp;</label>
        <input type="submit" value="Submit">
		<br>
    </form>
	<form action="." method="post">
		<label>&nbsp;</label>
		<input type="submit" value="Cancel">
	</form>

</main>
<?php include '../../view/footer.php'; ?>