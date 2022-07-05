<div style="width:100%;margin:7px auto" class="row">
    <select style="margin-right:30px" class="form-control col-6" name="" id="idTinh" >
        
        <?php
            foreach ($allTinh as $value) {?>
                <option value="<?=$value['idTinh']?>"><?=$value['tenTinh']?></option>
        <?php    } ?>
    </select>
    <input style="margin-right:30px" class="form-control col-4" id="PhiVanChuyen" type="number">
    <button class="btn btn-primary col-1" id="btnThemPVC">Thêm</button>
</div>
<br>
<h5 style="font-size:20px">Phí vận chuyển các tỉnh khác : Sài Gòn, Hà Nội, Đà Nẵng</h5><br>  
<div class="row">
<input type="number" class="form-control col-3" placeholder="Phí vận chuyển" id="PVCOTher">
<button id="addOther" class="btn btn-secondary"> Thêm</button>
</div>
