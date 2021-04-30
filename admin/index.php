<?php 
    require_once('../util/main.php');
    //require_once('../util/secure_conn.php');
    require_once('../util/valid_admin.php');
    include 'view/header.php';
	include 'view/sidebar.php';
?>

<main>
    <h1>Admin Menu</h1>
    <p><a href="campus">Campus Manager</a></p>
    <p><a href="buildings">Building Manager</a></p>
    <p><a href="point_interest">Points of Interest Manager</a></p>
	<p><a href="tutoring">Tutoring Manager</a></p>
	<p><a href="clubs">Club Manager</a></p>
    <p><a href="courses">Course Manager</a></p>
	<p><a href="faq">FAQ Manager</a></p>
	<p><a href="account">Account Manager</a></p>
	<p><a href="pnw_handbook">PNW Handbook Manager</a></p>
	<p><a href="cep_handbook">CEP Handbook Manager</a></p>
</main>

<?php include 'view/footer.php'; ?>
