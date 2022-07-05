<div class="ProdgalleryUpdate">
    <div class="imageContainer">

    <div class="imageCol">
    <form action="index.php?page=storage&&act=updatestorage" method="post" enctype="multipart/form-data">
    <div style="width:1000px" class="form-row">
      <div class="form-group col-md-3">
        <div class=" multiplechoices">
        <select class="form-control " name="idProd" placeholder="Tên sản phẩm. . . ">
        <option selected disabled value="">Chọn một tên sản phẩm</option>
        <?php
        foreach ($allProduct as $value) {?>
            <option <?php if(isset($_GET['idProd'])&&$value['idProd']==$_GET['idProd']){echo 'selected';}?> value="<?=$value['idProd']?>"><?=$value['tenSP']?></option>
            <?php  }
            ?>
          </select>
        </div>
      </div>
      <div class="form-group col-md-3">
        <div class=" multiplechoices">
        <select id="choices-multiple-remove-button"  name="maKho" placeholder="Tên sản phẩm. . . ">
        <option selected disabled value="">Chọn một kho hàng</option>
        <?php
        foreach ($allStorage as $value) {?>
            <option <?php if(isset($_GET['maKho'])&&$_GET['maKho']==$value['maKho']){echo 'selected';} ?> value="<?=$value['idKho']?>"><?=$value['thongTin']?></option>
            <?php  }
            ?>
          </select>
        </div>
      </div>
      <div class="form-group col-md-3">
      <input style="margin-top:22px" type="number" class="form-control" min="0" placeholder="Số lượng tồn kho" name="Quantity">
      </div>
      <div class="form-group col-md-3">
        <button style="margin-top:24px" name="updateQtyStorage" class="btn btn-primary">Thêm</button>
    </div>
    </div>
    </form>
    </div>
   </div>
</div>