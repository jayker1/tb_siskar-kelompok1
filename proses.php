<?php
include 'koneksi.php';
include 'subproses.php';


if (isset($_POST['submit'])) {
	$status_id = getUserInput($_POST);

	$id_status = (int) $status_id[0];

	$result = 'SELECT status, info, penanganan FROM tb_status WHERE id = ' . $status_id[0];

	$getStatus = mysqli_fetch_array(mysqli_query($kon, $result));

	$penyakit = $getStatus[0];

	$info = $getStatus[1];

	$penanganan = $getStatus[2];

	include 'hasil.php';
}
