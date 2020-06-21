<?php include 'header.php';  ?>
<br>
<script>
  function myFunction() {
    window.print();
  }
</script>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-lg-11">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg">
                <div class="p-5">
                  <div class="text-center">
                  </div>
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Diagnosa Covid - 19</h1>
                  </div>
                  <div class="container col-lg">
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <h5>STATUS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5>
                        </span>
                      </div>
                      <textarea class="form-control" rows="1" readonly><?php echo "$status"; ?></textarea>
                    </div>

                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <h5>INFO&nbsp;&nbsp;&nbsp;</h5>
                        </span>
                      </div>
                      <textarea class="form-control" rows="6" readonly><?php echo "$info"; ?></textarea>
                    </div>

                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <h5>PENANGANAN</h5>
                        </span>
                      </div>
                      <textarea class="form-control" rows="6" readonly><?php echo "$penanganan"; ?> </textarea>
                    </div>
                  </div>
                  <br>
                  <div class="container">
                    <button style="float:right;" class="btn btn-secondary" onclick="myFunction()">CETAK</button>
                  </div>
                  <br>
                  <br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
<?php include 'footer.php'; ?>