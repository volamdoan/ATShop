<div class="addprodform">
    <form action="index.php?page=product&&act=addproduct" method="post">
      <div class="form-row">
        <div class="form-group col-md-12">
          <label for="inputEmail4">Tên sản phẩm</label>
          <input type="text" name="ProdName" required class="form-control" id="ProdName" placeholder="Tên sản phẩm">
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputAddress">Chiết khấu</label>
          <input type="number" class="form-control" required min=0 id="discount" name="discount" placeholder="Chiết khấu">
        </div>
        <!-- <div class="form-group col-md-3">
          <label for="inputAddress2">Số lượng</label>
          <input type="number" class="form-control" required id="quantity" min=1 name="quantity" placeholder="Số lượng">
        </div> -->
        <div class="form-group col-md-6">
          <div class=" multiplechoices">
            <select id="choices-multiple-remove-button" name="tagCollection[]" required placeholder="Nhãn tên . . . " multiple>
            <?php
              foreach ($allKeyWork as $value) {?>

            <option value="<?=$value['idKey']?>"><?=$value['keyword']?></option>

            <?php  }
            ?>
            </select> </div>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-3">
          <select id="choices-multiple-remove-button" required name="brand" placeholder="Hãng . . . ">
            <?php
              foreach ($allBrands as $value) {?>

            <option value="<?=$value['idBrand']?>"><?=$value['BrandName']?></option>

            <?php  }
            ?>
          </select>
        </div>
        <div class="form-group col-md-3">
          <select id="choices-multiple-remove-button" required name="thietbi" placeholder="Thiết bị . . . ">
            <?php
              foreach ($allThietBi as $value) {?>

            <option value="<?=$value['idThietBi']?>"><?=$value['tenThietBi']?></option>

            <?php  }
            ?>
          </select>
        </div>
        <div class="form-group col-md-3">
          <select id="choices-multiple-remove-button" required name="ColorCollection[]" placeholder="Màu ... "multiple>
            <?php
              foreach ($allColor as $value) {?>
            <option value="<?=$value['idMau']?>"><?=$value['tenMau']?></option>
            <?php  }
            ?>
          </select>
        </div>
        <div class="form-group col-md-3">
          <select id="choices-multiple-remove-button" required name="dungluongcollect[]" placeholder="Dung Lượng ... "multiple>
            <?php
              foreach ($allDungLuong as $value) {?>

            <option value="<?=$value['idDungLuong']?>"><?=$value['dungluong']?></option>

            <?php  }
            ?>
          </select>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <label>Thông số</label>
          <textarea type="text" name="description" required class="form-control" id="Description"></textarea>
        </div>
        <div class="form-group col-md-6">
          <label>Bài viết</label>
          <textarea type="text" name="content" required class="form-control" id="content"></textarea>
        </div>
      </div>
      <div class="form-row">

      </div>
      <button type="submit" name="addProdBtn" class="btn btn-primary">Thêm</button>
    </form>
  </div>