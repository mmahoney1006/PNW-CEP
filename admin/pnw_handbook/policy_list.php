<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">PNW Handbook Manager - List Policies</h1>
    <p>To add a policy, select the "Add Policy" link.</p>
	<br>
	<?php if (count($policies) == 0) : ?>
        <p>There is no policy in the system.</p>
    <?php else : ?>
		<table>
			<?php foreach ($policies as $policy) : ?>
				<tr>
					<td>
						<b><?php echo htmlspecialchars($policy['Name']); ?></b>
					</td>
					<td>
						<a href="?action=show_add_edit_form&amp;policy_id=<?php
						  echo $policy['ID']; ?>">Edit</a>
					</td>
					<td>
						<a href="?action=delete_policy&amp;policy_id=<?php
						  echo $policy['ID']; ?>">Delete</a>
					</td>
				</tr>
			<?php endforeach; ?>
		</table>
	<?php endif; ?>
	<br><br>
    <h2>Links</h2>
    <p><a href="index.php?action=show_add_edit_form">Add Policy</a></p>

</main>
<?php include '../../view/footer.php'; ?>