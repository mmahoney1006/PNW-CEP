<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($tutoring_id)) {
        $heading_text = 'Edit Tutoring Information';
    } else {
        $heading_text = 'Add Tutoring Information';
    }
    ?>
    <h1>Tutoring Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_tutoring_form">
        <?php if (isset($building_id)) : ?>
            <input type="hidden" name="action" value="update_tutoring">
            <input type="hidden" name="tutoring_id"
                   value="<?php echo $tutoring_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_tutoring">
        <?php endif; ?>

		<label>Course:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="course"
			value="<?php echo htmlspecialchars($tutoring['Course']); ?>">
		<?php } else { ?>
			<input type="text" name="course" value="">
		<?php } ?>
		<br>
		
		<label>Title:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="title"
			value="<?php echo htmlspecialchars($tutoring['Title']); ?>">
		<?php } else { ?>
			<input type="text" name="title" value="">
		<?php } ?>
		<br>
		
		<label>Monday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="monday"
			value="<?php echo htmlspecialchars($building['Monday']); ?>">
		<?php } else { ?>
			<input type="text" name="monday" value="">
		<?php } ?>
		<br>
		
		<label>Tuesday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="tuesday"
			value="<?php echo htmlspecialchars($building['Tuesday']); ?>">
		<?php } else { ?>
			<input type="text" name="tuesday" value="">
		<?php } ?>
		<br>
		
		<label>Wednesday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="wednesday"
			value="<?php echo htmlspecialchars($building['Wednesday']); ?>">
		<?php } else { ?>
			<input type="text" name="wednesday" value="">
		<?php } ?>
		<br>
		
		<label>Thursday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="thursday"
			value="<?php echo htmlspecialchars($building['Thursday']); ?>">
		<?php } else { ?>
			<input type="text" name="thursday" value="">
		<?php } ?>
		<br>
		
		<label>Friday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="friday"
			value="<?php echo htmlspecialchars($building['Friday']); ?>">
		<?php } else { ?>
			<input type="text" name="friday" value="">
		<?php } ?>
		<br>
		
		
		<label>&nbsp;</label>
        <input type="submit" value="Submit">
        
    </form>

</main>
<?php include '../../view/footer.php'; ?>