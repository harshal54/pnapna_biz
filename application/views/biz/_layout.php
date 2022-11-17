<!DOCTYPE html>
<html lang="en">
	<?php $this->load->view('biz/components/head'); ?>
	<body>
		<?php $this->load->view('biz/components/header-notice'); ?>
		<?php $this->load->view('biz/components/header'); ?>
		<?php $this->load->view('biz/components/scrollbar'); ?>
		<?php $this->load->view($content);?>
		<?php $this->load->view('biz/components/footer-head.php'); ?>
		<?php $this->load->view('biz/components/footer'); ?>
	</body>
</html>