<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($policy_id)) {
        $heading_text = 'Edit Policy';
    } else {
        $heading_text = 'Add Policy';
    }
    ?>
    <h1>PNW Handbook Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_policy_form">
        <?php if (isset($policy_id)) : ?>
            <input type="hidden" name="action" value="update_policy">
            <input type="hidden" name="policy_id"
                   value="<?php echo $policy_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_policy">
        <?php endif; ?>

		<label>Name:</label>
		<?php
		if (isset($policy_id)) { ?>
			<input type="text" name="name"
			value="<?php echo htmlspecialchars($policy['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
		<br>
		
		<label>Section:</label>
		<?php
		if (isset($policy_id)) { ?>
			<input type="text" name="section" size="50"
			value="<?php echo htmlspecialchars($policy['Section']); ?>">
		<?php } else { ?>
			<input type="text" name="section" value="">
		<?php } ?>
		<br>
			
		<label>Information:</label>
		<?php
		if (isset($policy_id)) { ?>
			<textarea name="information" rows="10" cols="50"><?php echo $policy['Information']; ?></textarea>
		<?php } else { ?>
			<textarea name="information" rows="10" cols="50"></textarea>
		<?php } ?>
		<br>
		
		<label>&nbsp;</label>
        <input type="submit" value="Submit">
        <input type="button" value="Cancel" action=".">
    </form>

</main>
<?php include '../../view/footer.php'; ?>