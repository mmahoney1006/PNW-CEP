<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($cep_id)) {
        $heading_text = 'Edit Policy';
    } else {
        $heading_text = 'Add Policy';
    }
    ?>
    <h1>CEP Handbook Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_cep_form">
        <?php if (isset($cep_id)) : ?>
            <input type="hidden" name="action" value="update_cep">
            <input type="hidden" name="cep_id"
                   value="<?php echo $cep_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_cep">
        <?php endif; ?>
		<label>*Required Fields</label>
		<br>
		<br>

		<label>*Name:</label>
		<?php
		if (isset($cep_id)) { ?>
			<input type="text" name="name"
			value="<?php echo htmlspecialchars($cep['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
		<br>
		
		
		<label>*Information:</label>
		<?php
		if (isset($cep_id)) { ?>
			<textarea name="information" rows="10" cols="50"><?php echo $cep['Information']; ?></textarea>
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