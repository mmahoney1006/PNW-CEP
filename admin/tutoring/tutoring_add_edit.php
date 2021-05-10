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
        <?php if (isset($tutoring_id)) : ?>
            <input type="hidden" name="action" value="update_tutoring">
            <input type="hidden" name="tutoring_id"
                   value="<?php echo $tutoring_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_tutoring">
        <?php endif; ?>
		<label>*Required Fields</label>
		<br>
		<br>

		<label>*Course:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="course"
			value="<?php echo htmlspecialchars($tutoring['Course']); ?>">
		<?php } else { ?>
			<input type="text" name="course" value="">
		<?php } ?>
		<br>
		
		<label>*Title:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<input type="text" name="title"
			value="<?php echo htmlspecialchars($tutoring['Title']); ?>">
		<?php } else { ?>
			<input type="text" name="title" value="">
		<?php } ?>
		<br>
		
		<label>*Monday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<textarea name="monday" rows="5" cols="20"><?php echo $tutoring['Monday']; ?></textarea>
		<?php } else { ?>
			<textarea name="monday" rows="5" cols="20"></textarea>
		<?php } ?>
		<br>
		
		<label>*Tuesday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<textarea name="tuesday" rows="5" cols="20"><?php echo $tutoring['Tuesday']; ?></textarea>
		<?php } else { ?>
			<textarea name="tuesday" rows="5" cols="20"></textarea>
		<?php } ?>
		<br>
		
		<label>*Wednesday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<textarea name="wednesday" rows="5" cols="20"><?php echo $tutoring['Wednesday']; ?></textarea>
		<?php } else { ?>
			<textarea name="wednesday" rows="5" cols="20"></textarea>
		<?php } ?>
		<br>
		
		<label>*Thursday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<textarea name="thursday" rows="5" cols="20"><?php echo $tutoring['Thursday']; ?></textarea>
		<?php } else { ?>
			<textarea name="thursday" rows="5" cols="20"></textarea>
		<?php } ?>
		<br>
		
		<label>*Friday Hours:</label>
		<?php
		if (isset($tutoring_id)) { ?>
			<textarea name="friday" rows="5" cols="20"><?php echo $tutoring['Friday']; ?></textarea>
		<?php } else { ?>
			<textarea name="friday" rows="5" cols="20"></textarea>
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