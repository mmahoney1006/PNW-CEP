<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($club_id)) {
        $heading_text = 'Edit Club';
    } else {
        $heading_text = 'Add Club';
    }
    ?>
    <h1>Club Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_club_form">
        <?php if (isset($club_id)) : ?>
            <input type="hidden" name="action" value="update_club">
            <input type="hidden" name="club_id"
                   value="<?php echo $club_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_club">
        <?php endif; ?>

		<label>Name:</label>
		<?php
		if (isset($club_id)) { ?>
			<input type="text" name="name"
			value="<?php echo htmlspecialchars($club['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
		<br>
				
		<label>Description:</label>
		<?php
		if (isset($club_id)) { ?>
			<textarea name="description" rows="10" cols="50"><?php echo $club['Description']; ?></textarea>
		<?php } else { ?>
			<textarea name="description" rows="10" cols="50"></textarea>
		<?php } ?>
		<br>
		
		<label>President:</label>
		<?php
		if (isset($club_id)) { ?>
			<input type="text" name="president"
			value="<?php echo htmlspecialchars($club['President']); ?>">
		<?php } else { ?>
			<input type="text" name="president" value="">
		<?php } ?>
		<br>
		
		<label>Advisor:</label>
		<?php
		if (isset($club_id)) { ?>
			<input type="text" name="advisor"
			value="<?php echo htmlspecialchars($club['Advisor']); ?>">
		<?php } else { ?>
			<input type="text" name="advisor" value="">
		<?php } ?>
		<br>
		
		<label>Email:</label>
		<?php
		if (isset($club_id)) { ?>
			<input type="text" name="email"
			value="<?php echo htmlspecialchars($club['Email']); ?>">
		<?php } else { ?>
			<input type="text" name="email" value="">
		<?php } ?>
		<br>
		
		<label>&nbsp;</label>
        <input type="submit" value="Submit">
        
    </form>

</main>
<?php include '../../view/footer.php'; ?>