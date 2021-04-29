<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($campus_id)) {
        $heading_text = 'Edit Campus';
    } else {
        $heading_text = 'Add Campus';
    }
    ?>
    <h1>Campus Manager - <?php echo $heading_text; ?></h1>
    <form action="." method="post" id="add_campus_form">
        <?php if (isset($campus_id)) : ?>
            <input type="hidden" name="action" value="update_campus">
            <input type="hidden" name="campus_id"
                   value="<?php echo $campus_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_campus">
        <?php endif; ?>
		<label>*Required Fields</label>

        <label>*Name:</label>
		<?php
		if (isset($campus_id)) { ?>	
			<input type="text" name="name"
            value="<?php echo htmlspecialchars($campus['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
        <br>

        <label>*Address:</label>
		<?php
		if (isset($campus_id)) { ?>
			<input type="text" name="address" 
            value="<?php echo htmlspecialchars($campus['Address']); ?>" 
            size="30">
		<?php } else { ?>
			<input type="text" name="address" value="">
		<?php } ?>
        <br>
        <label>*Phone Number:</label>
		<?php
		if (isset($campus_id)) { ?>
			<input type="text" name="phonenum" 
            value="<?php echo htmlspecialchars($campus['PhoneNum']); ?>" 
            size="20">
		<?php } else { ?>
			<input type="text" name="phonenum" value="">
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