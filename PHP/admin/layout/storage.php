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
          <a class="nav-link" style="color:white" href="index.php?page=storage">Kho hàng<span
              class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:white" href="#" id="navbarDropdown" role="button"
            data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Tùy chọn
          </a>
          <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <h6 class="dropdown-header">Menu</h6>
            <a class="dropdown-item addkey" href="index.php?page=storage&&option=addStorage">Thêm kho hàng</a>
            <a class="dropdown-item addkey" href="index.php?page=storage&&act=allProduct&&option=allProduct">Tất cả sản phẩm</a>
            <a class="dropdown-item " href="index.php?page=storage&&option=allStoreInfo">Tất cả kho hàng</a>

            <!-- <a class="dropdown-item updateprod" href="">Chỉnh sửa sản phẩm</a> -->
            <a class="dropdown-item runoutprod" href="">Sản phẩm sắp hêt</a>
          </div>

        </li>

      </ul>

    </div>
  </nav>
  <br><br>
    <?php
      if(!isset($_GET['option'])){
        $_GET['option']='allProduct';
      }
      switch ($_GET['option']) {
        case'allstorage':
          include 'layout/allStorage.php';
          break;
        case 'addStorage':
          include 'layout/addStorage.php';
          break;
        case 'allStoreInfo':
          include 'layout/allStoreInfo.php';
          break;
        case 'allProduct':
          include 'layout/allStoreProduct.php';
          break;
        case 'singleProduct':
          include 'layout/singleProdStorage.php';
          break;
        case 'UPDQTY':
          include 'layout/UPDQTY.php';
          break;
        default:
          
          break;
      }
    ?>
  </div>