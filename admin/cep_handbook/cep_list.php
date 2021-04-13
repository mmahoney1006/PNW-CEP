<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">CEP Handbook Manager - List Policies</h1>
    <p>To add a policy, select the "Add Policy" link.</p>
	<br>
	<?php if (count($ceps) == 0) : ?>
        <p>There is no policy in the system.</p>
    <?php else : ?>
		<?php foreach ($ceps as $cep) : ?>
			<p>
				<b><?php echo htmlspecialchars($cep['Name']); ?></b>&emsp;
				<a href="?action=show_add_edit_form&amp;cep_id=<?php
				  echo $cep['ID']; ?>">Edit</a>
				<a href="?action=delete_cep&amp;cep_id=<?php
				  echo $cep['ID']; ?>">Delete</a>
			</p>
			<?php endforeach; ?>
	<?php endif; ?>
	<br><br>
    <h2>Links</h2>
    <p><a href="index.php?action=show_add_edit_form">Add Policy</a></p>

</main>
<?php include '../../view/footer.php'; ?>