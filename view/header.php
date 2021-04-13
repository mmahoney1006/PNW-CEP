<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>PNW Concurrent Enrollment</title>
    <link rel="stylesheet" type="text/css"
          href="<?php echo $app_path ?>main.css">
	<script type="text/javascript">
		function printDiv(divName) {
			 var printContents = document.getElementById(divName).innerHTML;
			 var originalContents = document.body.innerHTML;

			 document.body.innerHTML = printContents;

			 window.print();

			 document.body.innerHTML = originalContents;
		}
	</script>
</head>

<body>
<header>
    <h1>Concurrent Enrollment Program</h1>
</header>
</body>
</html>