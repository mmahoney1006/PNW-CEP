<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">Tutoring Manager - List Tutoring Information</h1>
    <p>To add a course, select the "Add Course" link.</p>
	<br>
	<?php if (count($tutorings) == 0) : ?>
        <p>There is no tutoring information in the system.</p>
    <?php else : ?>
		<table>
			<?php foreach ($tutorings as $tutoring) : ?>
				<tr>
					<td>
						<b><?php echo htmlspecialchars($tutoring['Course']); ?></b>
					</td>
					<td>
						<a href="?action=show_add_edit_form&amp;tutoring_id=<?php
						  echo $tutoring['ID']; ?>">Edit</a>
					</td>
					<td>
						<a href="?action=delete_tutoring&amp;tutoring_id=<?php
						  echo $tutoring['ID']; ?>">Delete</a>
					</td>
				</tr>
			<?php endforeach; ?>
		</table>
	<?php endif; ?>
	<br><br>
    <h1>Links</h1>
    <p><a href="index.php?action=show_add_edit_form">Add Course</a></p>

</main>
<?php include '../../view/footer.php'; ?>