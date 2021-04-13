<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">Club Manager - List Clubs</h1>
    <p>To add a club, select the "Add Club" link.</p>
	<br>
	<?php if (count($clubs) == 0) : ?>
        <p>There is no club in the system.</p>
    <?php else : ?>
		<?php foreach ($clubs as $club) : ?>
			<p>
				<b><?php echo htmlspecialchars($club['Name']); ?></b>&emsp;
				<a href="?action=show_add_edit_form&amp;club_id=<?php
				  echo $club['ID']; ?>">Edit</a>
				<a href="?action=delete_club&amp;club_id=<?php
				  echo $club['ID']; ?>">Delete</a>
			</p>
			<?php endforeach; ?>
	<?php endif; ?>
	<br><br>
    <h2>Links</h2>
    <p><a href="index.php?action=show_add_edit_form">Add Club</a></p>

</main>
<?php include '../../view/footer.php'; ?>