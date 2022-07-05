<br>
<div style="margin-left:3px" class="row">
    <input style="margin-right:20px" type="text" id="fullName" class="form-control col-4" placeholder="Tên chủ tài khoản">
    <input style="margin-right:20px" type="text" id="username" class="form-control col-4" placeholder="Username...">
    <input type="text" class="form-control col-3" id="email" placeholder="Email . . .">
    
</div>
<br>
<div style="margin-left:3px" id="idRole" class="row">
    <select name="" class="form-control col-6" id="">
        <?php
            foreach ($allRole as  $value) {?>
                <option value="<?=$value['idRole']?>"><?=$value['tenRole']?></option>
        <?php    }
        ?>
        
    </select>
    <input type="text" id="note" placeholder="Ghi chú" class="form-control col-6">
</div>
<br>
<button style="margin-left:3px" id="addUserBtn" class="btn btn-primary">Thêm</button>