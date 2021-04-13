<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">Points of Interest Manager - List Points of Interest</h1>
    <p>To add a location, select the "Add Location" link.</p>
	<br>
	<?php if (count($pois) == 0) : ?>
        <p>There is no point of interest in the system.</p>
    <?php else : ?>
		<?php foreach ($pois as $poi) : ?>
			<p>
				<b><?php echo htmlspecialchars($poi['Name']); ?></b>&emsp;
				<a href="?action=show_add_edit_form&amp;poi_id=<?php
				  echo $poi['ID']; ?>">Edit</a>
				<a href="?action=delete_poi&amp;poi_id=<?php
				  echo $poi['ID']; ?>">Delete</a>
			</p>
			<?php endforeach; ?>
	<?php endif; ?>
	<br><br>
    <h2>Links</h2>
    <p><a href="index.php?action=show_add_edit_form">Add Location</a></p>

</main>
<?php include '../../view/footer.php'; ?>