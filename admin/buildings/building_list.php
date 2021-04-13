<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">Building Manager - List Buildings</h1>
    <p>To add a building, select the "Add Building" link.</p>
	<br>
	<?php if (count($buildings) == 0) : ?>
        <p>There is no building in the system.</p>
    <?php else : ?>
		<?php foreach ($buildings as $building) : ?>
			<p>
				<b><?php echo htmlspecialchars($building['Name']); ?></b>&emsp;
				<a href="?action=show_add_edit_form&amp;building_id=<?php
				  echo $building['ID']; ?>">Edit</a>
				<a href="?action=delete_building&amp;building_id=<?php
				  echo $building['ID']; ?>">Delete</a>
			</p>
			<?php endforeach; ?>
	<?php endif; ?>
	<br><br>
    <h1>Links</h1>
    <p><a href="index.php?action=show_add_edit_form">Add Building</a></p>

</main>
<?php include '../../view/footer.php'; ?>