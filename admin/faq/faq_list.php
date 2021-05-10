<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <h1 class="top">FAQ Manager - List FAQs</h1>
    <p>To add a FAQ, select the "Add FAQ" link.</p>
	<br>
	<?php if (count($faqs) == 0) : ?>
        <p>There is no FAQ in the system.</p>
    <?php else : ?>
		<table>
			<?php foreach ($faqs as $faq) : ?>
				<tr>
					<td>
						<b><?php echo htmlspecialchars($faq['Question']); ?></b>
					</td>
					<td>
						<a href="?action=show_add_edit_form&amp;faq_id=<?php
						  echo $faq['ID']; ?>">Edit</a>
					</td>
					<td>
						<a href="?action=delete_faq&amp;faq_id=<?php
						  echo $faq['ID']; ?>">Delete</a>
					</td>
				</tr>
			<?php endforeach; ?>
		</table>
	<?php endif; ?>
	<br><br>
    <h2>Links</h2>
    <p><a href="index.php?action=show_add_edit_form">Add FAQ</a></p>

</main>
<?php include '../../view/footer.php'; ?>