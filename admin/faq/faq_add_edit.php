<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar.php'; ?>
<main>
    <?php
    if (isset($faq_id)) {
        $heading_text = 'Edit FAQ';
    } else {
        $heading_text = 'Add FAQ';
    }
    ?>
    <h1>FAQ Manager - <?php echo $heading_text; ?></h1>
    <form action="index.php" method="post" id="add_faq_form">
        <?php if (isset($faq_id)) : ?>
            <input type="hidden" name="action" value="update_faq">
            <input type="hidden" name="faq_id"
                   value="<?php echo $faq_id; ?>">
        <?php else: ?>
            <input type="hidden" name="action" value="add_faq">
        <?php endif; ?>

		<label>Question:</label>
		<?php
		if (isset($faq_id)) { ?>
			<input type="text" name="question" size="50"
			value="<?php echo htmlspecialchars($faq['Question']); ?>">
		<?php } else { ?>
			<input type="text" name="question" size="50" value="">
		<?php } ?>
		<br>
				
		<label>Answer:</label>
		<?php
		if (isset($faq_id)) { ?>
			<textarea name="answer" rows="10" cols="50"><?php echo $faq['Answer']; ?></textarea>
		<?php } else { ?>
			<textarea name="answer" rows="10" cols="50"></textarea>
		<?php } ?>
		<br>
				
		<label>&nbsp;</label>
        <input type="submit" value="Submit">
        
    </form>

</main>
<?php include '../../view/footer.php'; ?>