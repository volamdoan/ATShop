<form action="index.php?page=product&&act=submitEditProd" method="post">
    <?php
        foreach ($SingleProduct as  $value) {?>
        <?php $idBrand = $value['idBrand']; $idThietBi = $value['idThietBi'];$content = $value['content'];$description = $value['description'];$idProd = $value['idProd'];?>
            <div class="form-row">
            <div class="form-group col-md-12">
              <label for="inputEmail4">Tên sản phẩm</label>
              <input type="hidden" name="idProd" value="<?=$idProd?>">
              <input type="text" name="ProdName" required class="form-control" value="<?=$value['tenSP']?>" id="ProdName" placeholder="Tên sản phẩm">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputAddress">Chiết khấu</label>
              <input type="number" class="form-control" min=0 required id="discount" value="0" name="discount" placeholder="<?=$value['discount']?>">
            </div>
            <!-- <div class="form-group col-md-3">
              <label for="inputAddress2">Số lượng</label>
              <input type="number" class="form-control" required id="quantity" min=1 name="quantity" placeholder="Số lượng">
            </div> -->
            <div class="form-group col-md-6">
              <div class=" multiplechoices">
                <select id="choices-multiple-remove-button" name="tagCollection[]" placeholder="Nhãn tên . . . " multiple>
                
                <?php
                    foreach ($allKeyWork as $value) {?>
                      <option <?php foreach ($alltagSingleProd as  $value1) {
                  if($value1['idKey']==$value['idKey']){echo 'selected';}
              }?> value="<?=$value['idKey']?>"><?=$value['keyword']?></option>
                    <?php  }
                  ?>
                 
                </select> </div>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <select id="choices-multiple-remove-button" name="brand" placeholder="Hãng . . . ">
                <?php
                  foreach ($allBrands as $value) {?>
    
                <option <?php if($value['idBrand']==$idBrand){echo 'selected';}?> value="<?=$value['idBrand']?>"><?=$value['BrandName']?></option>
    
                <?php  }
                ?>
              </select>
            </div>
            <div class="form-group col-md-6">
              <select id="choices-multiple-remove-button" name="thietbi" placeholder="Thiết bị . . . ">
                <?php
                  foreach ($allThietBi as $value) {?>
                <option <?php if($value['idThietBi']==$idThietBi){echo 'selected';}?> value="<?=$value['idThietBi']?>"><?=$value['tenThietBi']?></option>
                <?php  }
                ?>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label>Thông số</label>
              <textarea type="text" name="description" required class="form-control" id="Description"><?=$description?></textarea>
            </div>
            <div class="form-group col-md-6">
              <label>Bài viết</label>
              <textarea type="text" name="content" required class="form-control" id="content"><?=$content?></textarea>
            </div>
          </div>
          <div class="form-row">
    
          </div>
      <?php  } ?>
     
      <button type="submit" name="editProdBtn" class="btn btn-warning">Sửa</button>
    </form>