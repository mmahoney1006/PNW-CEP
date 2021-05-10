<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">Campus Manager - List Campuses</h1>
    <p>To add a campus, select the "Add Campus" link.</p>
	<br>
	<?php if (count($campuses) == 0) : ?>
        <p>There is no campus in the system.</p>
    <?php else : ?>
		<table>
			<?php foreach ($campuses as $campus) : ?>
				<tr>
					<td>
						<b><?php echo htmlspecialchars($campus['Name']); ?></b>
					</td>
					<td>
						<a href="?action=show_add_edit_form&amp;campus_id=<?php
						  echo $campus['ID']; ?>">Edit</a>
					</td>
					<td>
						<a href="index.php?action=delete_campus&amp;campus_id=<?php
						  echo $campus['ID']; ?>">Delete</a>
					</td>
				</tr>
			<?php endforeach; ?>
		</table>
	<?php endif; ?>
	<br><br>
    <h2>Links</h2>
    <p><a href="index.php?action=show_add_edit_form">Add Campus</a></p>

</main>
<?php include '../../view/footer.php'; ?>