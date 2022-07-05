<div class="row">
<select style="margin-left:10px" class="form-control col-3" name="" id="">
    <?php
        foreach ($Product as $value) {?>
            <option disabled <?php if($value['idProd']==$_GET['idProd']){echo 'selected';}?> value="<?=$value['idProd']?>"><?=$value['tenSP']?></option>
    <?php    }
    ?>
   
</select>
<select style="margin-left:10px" name=""  class="form-control col-3" id="idKho">
    <?php
        foreach ($StorageAll as $value) {?>
            <option disabled <?php if($value['idKho']==$_GET['idKho']){echo 'selected';}?> value="<?=$value['idKho']?>"><?=$value['thongTin']?></option>
    <?php    }
    ?>
</select>
<input type="hidden" id="idProd" value="<?=$_GET['idProd']?>">
<input style="margin-left:10px" id="soLuongTon" type="number" class="form-control col-3">
<button style="margin-left:10px"  class="btn btn-primary" data-id="<?=$_GET['idTon']?>" id="UDQTYBTN">Cập nhật</button>
</div>
