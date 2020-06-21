<?php include 'koneksi.php'; ?>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-lg-7">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg 7">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Diagnosa Covid - 19</h1>
									</div>
									<center>
										<form class="col-lg" method="POST" action="proses.php">
											<div style="overflow: scroll; height: 467px;">
												<?php
												$qry = "select * from tb_gejala";
												$data = mysqli_query($kon, $qry);
												while ($d = mysqli_fetch_array($data)) {
												?>
													<div class="input-group mb-3">
														<div class="input-group-prepend">
															<div class="input-group-text">
																<input type="checkbox" aria-label="Checkbox for following text input" value="<?= $d['kode'] ?>" name="<?= $d['id'] ?>">
															</div>
														</div>
														<input type="text" class="form-control" aria-label="Text input with checkbox" value="<?= $d['gejala'] ?>">
													</div>
												<?php
												}
												?>
											</div>
											<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="DIAGNOSA">
										</form>
									</center>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>