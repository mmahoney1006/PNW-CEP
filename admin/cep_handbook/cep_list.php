<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">CEP Handbook Manager - List Policies</h1>
    <p>To add a policy, select the "Add Policy" link.</p>
	<br>
	<?php if (count($ceps) == 0) : ?>
        <p>There is no policy in the system.</p>
    <?php else : ?>
		<table>
			<?php foreach ($ceps as $cep) : ?>
				<tr>
					<td>
						<b><?php echo htmlspecialchars($cep['Name']); ?></b>
					</td>
					<td>
						<a href="?action=show_add_edit_form&amp;cep_id=<?php
						  echo $cep['ID']; ?>">Edit</a>
					</td>
					<td>
						<a href="?action=delete_cep&amp;cep_id=<?php
						  echo $cep['ID']; ?>">Delete</a>
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