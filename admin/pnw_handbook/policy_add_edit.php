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
		<label>*Required Fields</label>
		<br>
		<br>

		<label>*Name:</label>
		<?php
		if (isset($policy_id)) { ?>
			<input type="text" name="name"
			value="<?php echo htmlspecialchars($policy['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
		<br>
		
		<label>*Section:</label>
		<select name="section_id">
		<?php foreach ($sections as $section) :
			if ($section['ID'] == $policy['Section']) {
				$selected = 'selected';
			} else {
				$selected = '';
			}
			?>
			<option value="<?php echo $section['ID']; ?>"<?php
				echo $selected ?>>
				<?php echo htmlspecialchars($section['Name']); ?>
			</option>
		<?php endforeach; ?>
		</select>
		<br>
		
		<label>*Information:</label>
		<?php
		if (isset($policy_id)) { ?>
			<textarea name="information" rows="10" cols="50"><?php echo $policy['Information']; ?></textarea>
		<?php } else { ?>
			<textarea name="information" rows="10" cols="50"></textarea>
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