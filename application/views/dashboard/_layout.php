<!DOCTYPE html>
<html lang="en">
	<?php $this->load->view('dashboard/components/head'); ?>
	<body class="az-body az-body-sidebar az-body-dashboard-nine">
			<?php $this->load->view('dashboard/components/header'); ?>
		<?php $this->load->view('dashboard/components/aside'); ?>
		<div class="az-content az-content-dashboard-nine">
			<?php $this->load->view($content); ?>
			<?php $this->load->view('dashboard/components/footer'); ?>
		</div>
	</body>
</html>