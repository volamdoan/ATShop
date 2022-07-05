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
          <a class="nav-link" style="color:white" href="index.php?page=product">Sản phẩm <span
              class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:white" href="#" id="navbarDropdown" role="button"
            data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Tùy chọn
          </a>
          <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <h6 class="dropdown-header">Menu</h6>
            <a class="dropdown-item addkey" href="index.php?page=product&&option=TagManage">Thêm nhãn</a>
            <a class="dropdown-item " href="index.php?page=product&&option=addProd">Thêm sản phẩm</a>
            <a class="dropdown-item" href="index.php?page=product&&act=downloadAddProdForm">Tài form thêm SP</a>
            <a class="dropdown-item"  href="index.php?page=product&&option=upform">Up Form</a>
            <a class="dropdown-item"  href="index.php?page=product&&act=refreshImg">Làm mới giá sản phẩm</a>

            <a class="dropdown-item runoutprod" >Sản phẩm sắp hêt</a>
          </div>

        </li>

      </ul>

    </div>
  </nav>
  <br><br>
    <?php
      if(!isset($_GET['option'])){
        $_GET['option']='allprod';
      }
      switch ($_GET['option']) {
        case 'TagManage':
          include 'layout/addkey.php';
          break;
        case 'addImage':
          include 'layout/updateGallery.php';
          break;
        case 'addProd':
          include 'layout/addprod.php';
          break;
        case 'getProdGallery':
          include 'layout/ProdGallery.php';
          break;
        case 'allprod':
          include 'layout/allprod.php';
          break;
        case 'editProd':
          include 'layout/editProd.php';
          break;
        case 'upform':
          include 'layout/upform.php';
          break;
        case 'chitietSP':
          include 'layout/chitietSP.php';
          break;
        default:
          
          break;
      }
    ?>
  </div>


