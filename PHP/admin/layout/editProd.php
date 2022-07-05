<menu class="editProdMenu">
  <nav style="width:102.5%;height:56px;background-color: #e3f2fd;margin:0px auto;margin-left:-2.5%;margin-top:-3%;"
    class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="index.php?page=product&&act=editProd&&option=editProd&&option2=editInfo&&idProd=<?=$_GET['idProd']?>">Thông tin <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link"
            href="index.php?page=product&&act=editProd&&option=editProd&&option2=addImg&&idProd=<?=$_GET['idProd']?>">Hình
            ảnh</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"
            href="index.php?page=product&&act=editProd&&option=editProd&&option2=addOption&&idProd=<?=$_GET['idProd']?>">Phiên
            bản</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"
            href="index.php?page=product&&act=editProd&&option=editProd&&option2=addPrice&&idProd=<?=$_GET['idProd']?>">Đơn
            giá</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"
            href="index.php?page=product&&act=addtoStore&&idProd=<?=$_GET['idProd']?>">Nhập kho</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"
            href="index.php?page=product&&act=UPPrice&&idProd=<?=$_GET['idProd']?>">Nhập giá</a>
        </li>
      </ul>
    </div>
  </nav>
</menu>
<?php
  if(isset($_GET['option2'])){
    switch ($_GET['option2']) {
      case 'addImg':
        include 'layout/updateGallery.php';
        break;
      case 'addOption':
        include 'layout/chitietSP.php';
        break;
      case 'addPrice':
        include 'layout/addPrice.php';
        break;
      case 'editInfo':
        include 'layout/editProductInfo.php';
        break;
      default:
        # code...
        break;
    }
  }else{
    include 'layout/editProductInfo.php';

  }
?>