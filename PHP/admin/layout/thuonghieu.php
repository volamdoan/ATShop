<div class="main_container">
    <br><br><br>
<nav class="navbar navbar-expand-lg navbar-light bg-dark menu2">
    <form class="form-inline">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    </form>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <div class="mr-auto"></div>
      <ul class="navbar-nav my-2 my-lg-0">
    <li class="nav-item active">
        <a class="nav-link" style="color:white" href="index.php?page=brand">Thương hiệu <span class="sr-only">(current)</span></a>
      </li>
        <!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:white" href="#" id="navbarDropdown" role="button" data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Tùy chọn
        </a>
          <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <h6 class="dropdown-header">Menu</h6>
            <a class="dropdown-item addbrand" href="">Thêm thương hiệu</a>
          </div>
        </li> -->
      </ul>
      </div>
  </nav>
  <br><br>
    <div class="addForm">
    <div class="form-group">
      <label for="">Tên thương hiệu</label>
      <input type="text" name="BrandName" id="BrandName" class="form-control" placeholder="Tên thương hiệu . . .">
    </div>
    <button class="btn btn-primary addBrandBtn" id="addBrandBtn">Thêm</button>
    </div>
    <div style="margin-left:10px" class="editForm">
    <label for="">Tên thương hiệu</label>
      <div class="row">
      <input type="text" name="BrandName" id="NewBrandName" class="form-control col-7" placeholder="Tên thương hiệu mới . . .">
      <button style="margin-left:10px" class="btn btn-warning col-2" id="editBrandBtn">Sửa</button>
      </div>
     
    </div>
    <br><br>
    <div class="allBrand">
    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên thương hiệu</th>
      <th scope="col">Tỉnh trạng</th>
      <th style="text-align:center" colspan="2" scope="col">Tùy chọn</th>
    </tr>
  </thead>
  <tbody>
      <?php
      $i=1;
        foreach ($allBrands as $value) {?>
            <tr>
      <th scope="row"><?=$i++?></th>
      <td><span class="brand"><?=$value['BrandName']?></span></td>
      <td></td>
      <td style="width:80px"><button data-id="<?=$value['idBrand']?>" class="btn btn-warning editBrand">Sửa</button>
     </td>
      <td style="width:80px">
      <button  data-id="<?=$value['idBrand']?>" class="btn btn-danger deleteBrand">Xóa</button>
     </td>
    </tr>
     <?php   }
      ?>
    
  </tbody>
</table>
    </div>
</div>

