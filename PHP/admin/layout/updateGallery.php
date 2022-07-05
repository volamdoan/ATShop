<div class="ProdgalleryUpdate">
    <div class="imageContainer">
    <div class="imageCol">
    <form action="index.php?page=product&&act=addProdGallery" method="post" enctype="multipart/form-data">
    <div style="width:1000px" class="form-row">
      <div class="form-group col-md-3">
        <div class=" multiplechoices">
        <select id="choices-multiple-remove-button" data-id="<?=$value['idProd']?>" name="idProd" placeholder="Tên sản phẩm. . . ">
        <option selected disabled value="">Chọn một tên sản phẩm</option>
        <?php
        foreach ($allProduct as $value) {?>
            <option <?php if($value['idProd']==$_GET['idProd']){echo 'selected';}?> value="<?=$value['idProd']?>"><?=$value['tenSP']?></option>
            <?php  }
            ?>
          </select>
        </div>
      </div>
      <div class="form-group col-md-3">
      <input style="margin-top:30px;margin-left:20px"required type="file" name="Pictures[]" multiple>
      </div>
      <div class="form-group col-md-3">
        <button style="margin-top:27px" name="addPicBtn" class="btn btn-primary">Thêm</button>
    </div>
    </div>
    </form>
    </div>
   </div>
   <div class="imageContainer2">
     <input id="idProd" type="hidden" value="<?=$_GET['idProd']?>">
     <?php
      foreach ($allProductImage as $value) {?>
        <div class="imageCol">
          <img src="<?=$image_update.$value['image']?>" alt="">
          <div class="imageSection">
          <a href=""><span class="deleteImage" data-id="<?=$value['idGallery']?>" style="font-size:30px"><i class="mdi mdi-delete"></i></span></a>
          <?php
            if($value['image']!=$image1){?>
          <a href=""><span class="chooseImg1" data-id="<?=$value['image']?>" style="font-size:30px"><i class="mdi mdi-plus-circle"></i></span></a>
          <?php  }?>
            <?php
              if($value['image']!=$image2){?>
                <a class="" href=""><span class="chooseImg2" data-id="<?=$value['image']?>" style="font-size:30px"><i class="mdi mdi-plus-box"></i></span></a>
          <?php  } ?>
          </div>
        </div>
    <?php  } ?>

     
   </div>
</div>