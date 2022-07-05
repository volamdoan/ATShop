<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Connect Plus</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="layout/assets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="layout/assets/vendors/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="layout/assets/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="layout/assets/vendors/font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="layout/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <!-- endinject -->
  <!-- Layout styles -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
  <link rel="stylesheet" href="layout/assets/css/style.css">

  <!-- End layout styles -->
  <link rel="shortcut icon" href="layout/assets/images/favicon.png" />

</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <?php
            include 'layout/header.php';
          ?>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper ">
      <!-- partial:partials/_sidebar.html -->
      <?php
            include 'layout/sidebar.php';
          ?>
      <!-- partial -->
      <div class="main-panel">
        <?php
            if(isset($_GET['stt'])){
              switch ($_GET['stt']) {
                case 'fail':
                  echo '<div class="alert alert-danger alert show "id="alert"  role="alert">
                  '.$_SESSION['thongbao'].'<i style="margin-left:15px;cursor:pointer;color:white" class="fa fa-times close"></i>
                </div>';
                  break;
                case 'success':
                  echo '<div class="alert alert-success alert show" id="alert"  role="alert">
                  '.$_SESSION['thongbao'].' <i style="margin-left:15px;cursor:pointer;color:#8FBC8F" class="fa fa-times close"></i>
                </div>';
                  break;
                default:
                  # code...
                  break;
              }
            }
            $page= '';
            if(isset($_GET['page'])){
                $page= $_GET['page'];
            }else{
                $page= 'home';
            }
            switch ($page) {
                case 'home':
                    include 'layout/home.php';
                    break;
                case 'tb':
                    include 'layout/thietbi.php';
                    break;
                case 'brand':
                    include 'layout/thuonghieu.php';
                    break;
                case 'product':
                    include 'layout/product.php';
                    break;
                case 'comment':
                    include 'layout/comment.php';
                    break;
                case 'storage':
                    include 'layout/storage.php';
                    break;
                case 'dungluong':
                    include 'layout/dungluong.php';
                  break;
                case 'color':
                  include 'layout/color.php';
                  break;
                case 'transport':
                  include 'layout/transport.php';
                  break;
                case 'users':
                  include 'layout/users.php';
                  break;
                case 'bills':
                  include 'layout/bills.php';
                  break;
                case 'dieuhang':
                  include 'layout/dieuhang.php';
                  break;
                case 'nightbot':
                  include 'layout/nightbot.php';
                  break;
                case 'support':
                  include 'layout/support.php';
                  break;
                default:
                    # code...
                    break;
            }
        ?>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->

        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="layout/assets/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="layout/assets/vendors/chart.js/Chart.min.js"></script>
  <script src="layout/assets/vendors/jquery-circle-progress/js/circle-progress.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="layout/assets/js/off-canvas.js"></script>
  <script src="layout/assets/js/hoverable-collapse.js"></script>
  <script src="layout/assets/js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page -->
  <script src="layout/assets/js/dashboard.js"></script>
  <script src="layout/assets/js/sweetalert.min.js"></script>
  <script src="layout/assets/js/ckeditor/ckeditor.js"></script>
  <script src="layout/assets/js/ckfinder/ckfinder.js"></script>
  <script src="layout/assets/js/jquery-3.3.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>
  <!-- End custom js for this page -->

    <?php 
      include 'layout/jquery.php';
    ?>

</body>

</html>