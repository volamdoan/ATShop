<div class="main_container">
  <br><br><br>
  <nav class="navbar navbar-expand-lg navbar-light bg-dark menu2">
    <form class="form-inline">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    </form>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <div class="mr-auto"></div>
      <ul class="navbar-nav my-2 my-lg-0">
        <li class="nav-item active">
          <a class="nav-link" style="color:white" href="index.php?page=transport">Vận chuyển <span
              class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:white" href="#" id="navbarDropdown" role="button"
            data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Tùy chọn
          </a>
          <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <h6 class="dropdown-header">Menu</h6>
            <a class="dropdown-item addkey" href="index.php?page=transport&&option=QlyTinh">Quản lý Tỉnh</a>
            <a class="dropdown-item addkey" href="index.php?page=transport&&option=QlyPVC">Quản lý phí vận chuyển</a>
            <a class="dropdown-item addkey" href="index.php?page=transport&&option=QlyDon">Các đơn vận chuyển</a>
            <!-- <a class="dropdown-item " href="index.php?page=transport&&option=QlyTinh">Thêm tình</a> -->
          </div>

        </li>

      </ul>

    </div>
  </nav>
  <?php
    $option='';
    if(isset($_GET['option'])){
        $option = $_GET['option'];
    }
    switch ($option) {
        case 'QlyTinh':
            include 'layout/QlyTinh.php';
            break;
        case 'QlyPVC':
            include 'layout/QlyPVC.php';
          break;
        case 'QlyDon':
          include 'layout/QlyDon.php';
          break;
        default:
            include 'layout/allPVC.php';
            break;
    }
  ?>
</div>
