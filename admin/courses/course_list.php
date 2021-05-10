<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">Course Manager - List Courses</h1>
    <p>To add a course, select the "Add Course" link.</p>
	<br>
	<?php if (count($courses) == 0) : ?>
        <p>There is no course in the system.</p>
    <?php else : ?>
		<table>
			<?php foreach ($courses as $course) : ?>
				<tr>
					<td>
						<b><?php echo htmlspecialchars($course['Name']); ?></b>
					</td>
					<td>
						<a href="?action=show_add_edit_form&amp;course_id=<?php
						  echo $course['ID']; ?>">Edit</a>
					</td>
					<td>
						<a href="?action=delete_course&amp;course_id=<?php
						  echo $course['ID']; ?>">Delete</a>
					</td>
				</tr>
			<?php endforeach; ?>
		</table>
	<?php endif; ?>
	<br><br>
    <h2>Links</h2>
    <p><a href="index.php?action=show_add_edit_form">Add Course</a></p>

</main>
<?php include '../../view/footer.php'; ?>