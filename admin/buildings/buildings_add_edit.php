<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($building_id)) {
        $heading_text = 'Edit Building';
    } else {
        $heading_text = 'Add Building';
    }
    ?>
    <h1>Building Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_building_form">
        <?php if (isset($building_id)) : ?>
            <input type="hidden" name="action" value="update_building">
            <input type="hidden" name="building_id"
                   value="<?php echo $building_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_building">
        <?php endif; ?>

		<label>Name:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="name"
			value="<?php echo htmlspecialchars($building['Name']); ?>">
		<?php } else { ?>
			<input type="text" name="name" value="">
		<?php } ?>
		<br>
		
		<label>Campus:</label>
		<select name="campus_id">
		<?php foreach ($campuses as $campus) :
			if ($campus['ID'] == $building['Campus']) {
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
		
		<label>Monday Hours:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="monday"
			value="<?php echo htmlspecialchars($building['Monday']); ?>">
		<?php } else { ?>
			<input type="text" name="monday" value="">
		<?php } ?>
		<br>
		
		<label>Tuesday Hours:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="tuesday"
			value="<?php echo htmlspecialchars($building['Tuesday']); ?>">
		<?php } else { ?>
			<input type="text" name="tuesday" value="">
		<?php } ?>
		<br>
		
		<label>Wednesday Hours:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="wednesday"
			value="<?php echo htmlspecialchars($building['Wednesday']); ?>">
		<?php } else { ?>
			<input type="text" name="wednesday" value="">
		<?php } ?>
		<br>
		
		<label>Thursday Hours:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="thursday"
			value="<?php echo htmlspecialchars($building['Thursday']); ?>">
		<?php } else { ?>
			<input type="text" name="thursday" value="">
		<?php } ?>
		<br>
		
		<label>Friday Hours:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="friday"
			value="<?php echo htmlspecialchars($building['Friday']); ?>">
		<?php } else { ?>
			<input type="text" name="friday" value="">
		<?php } ?>
		<br>
		
		<label>Saturday Hours:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="saturday"
			value="<?php echo htmlspecialchars($building['Saturday']); ?>">
		<?php } else { ?>
			<input type="text" name="saturday" value="">
		<?php } ?>
		<br>
		
		<label>Sunday Hours:</label>
		<?php
		if (isset($building_id)) { ?>
			<input type="text" name="sunday"
			value="<?php echo htmlspecialchars($building['Sunday']); ?>">
		<?php } else { ?>
			<input type="text" name="sunday" value="">
		<?php } ?>
		<br>
		
		<label>&nbsp;</label>
        <input type="submit" value="Submit">
        <a href="."><input type="button" value="Cancel"></a>
        
    </form>

</main>
<?php include '../../view/footer.php'; ?>