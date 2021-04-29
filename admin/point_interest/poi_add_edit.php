<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($poi_id)) {
        $heading_text = 'Edit Point of Interest';
    } else {
        $heading_text = 'Add Point of Interest';
    }
    ?>
    <h1>Point of Interest Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_poi_form">
        <?php if (isset($poi_id)) : ?>
            <input type="hidden" name="action" value="update_poi">
            <input type="hidden" name="poi_id"
                   value="<?php echo $poi_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_poi">
        <?php endif; ?>

		<label>*Name:</label>
		<?php
		if (isset($poi_id)) { ?>
			<input type="text" name="name"
			value="<?php echo htmlspecialchars($poi['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
		<br>
		
		<label>*Campus:</label>
		<select name="campus_id">
		<?php foreach ($campuses as $campus) :
			if ($campus['ID'] == $poi['Campus']) {
				$selected = 'selected';
			} else {
				$selected = '';
			}
			?>
			<option value="<?php echo $campus['ID']; ?>"<?php
				echo $selected ?>>
				<?php echo htmlspecialchars($campus['Name']); ?>
			</option>
		<?php endforeach; ?>
		</select>
		<br>

				
		<label>*Address:</label>
		<?php
		if (isset($poi_id)) { ?>
			<input type="text" name="address" size="43"
			value="<?php echo htmlspecialchars($poi['Address']); ?>">
		<?php } else { ?>
			<input type="text" name="address" size="43" value="">
		<?php } ?>
		<br>
		
		<label>Contact:</label>
		<?php
		if (isset($poi_id)) { ?>
			<input type="text" name="contact"
			value="<?php echo htmlspecialchars($poi['Contact']); ?>">
		<?php } else { ?>
			<input type="text" name="contact" value="">
		<?php } ?>
		<br>
		
		<label>Phone Number:</label>
		<?php
		if (isset($poi_id)) { ?>
			<input type="text" name="phonenum"
			value="<?php echo htmlspecialchars($poi['PhoneNum']); ?>">
		<?php } else { ?>
			<input type="text" name="phonenum" value="">
		<?php } ?>
		<br>
		
		<label>Description:</label>
		<?php
		if (isset($poi_id)) { ?>
			<textarea name="description" rows="10" cols="50"><?php echo $poi['Description']; ?></textarea>
		<?php } else { ?>
			<textarea name="description" rows="10" cols="50"></textarea>
		<?php } ?>
		<br>
		
		<label>Link:</label>
		<?php
		if (isset($poi_id)) { ?>
			<input type="text" name="link" size="43"
			value="<?php echo htmlspecialchars($poi['Link']); ?>">
		<?php } else { ?>
			<input type="text" name="link" size="43" value="">
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