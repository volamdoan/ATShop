<br>
<div style="margin-left:5px" class="row">
    <input type="text" class="form-control col-3" id="RoleName" placeholder="Role mới">
    <button class="btn btn-primary col-1" id="addRoleBtn">Thêm</button>
    <select style="margin-left:120px" name=""  class="form-control col-4" id="idRole">
        <?php
            foreach ($allRole as $key => $value) {?>
                <option value="<?=$value['idRole']?>"><?=$value['tenRole']?></option>
        <?php    }
        ?>
    
    </select>
    <input type="text" Placeholder="Role mới" id="newRole" class="form-control col-2">
    <button class="btn btn-secondary col-1" id="submitEditRole">Sửa Role</button>
</div><br><br>
<div class="row">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên Role</th>
      <th scope="col">Xóa</th>
    </tr>
  </thead>
  <tbody>
    <?php
    $i=1;
        foreach ($allRole as $value) {?>
            <tr>
            <th scope="row"><?=$i++?></th>
            <td><?=$value['tenRole']?></td>
            <td><a class="btn btn-danger deleteRole" data-id="<?=$value['idRole']?>" href="">Xóa</a></td>
          </tr>
     <?php   }
    ?>
   
  </tbody>
</table>
</div>