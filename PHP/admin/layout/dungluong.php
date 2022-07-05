<div class="main_container">
    <br><br><br>
<form class="addForm">
      <label>Dung Lượng Sản phẩm</label>
      <input class="form-control" type="text" id="DungLuong" name="dungluong" placeholder="Dung lượng sản phẩm . . ."><br>
      <button id="addDungLuongBtn" class="btn btn-warning">Thêm</button>
    </form>
<form class="editForm">
    <div style="margin-left:5px" class="row">
    <input type="text" id="newDungLuong" class=" form-control col-6" placeholder="Dung Lượng mới"><br>
    <button style="margin-left:10px" id="editDungLuongBtn" class="btn btn-secondary col-2">Sửa</button>
    </div>

</form>
    <br><br>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th style="width:50px" scope="col">#</th>
          <th style="width:170px" scope="col">Dung lượng
          </th>
          <th style="text-align:center" colspan="2" scope="col">Tùy chọn</th>
        </tr>
      </thead>
      <tbody>
        <?php
      $i=1;
        foreach ($allDungLuong as $value) {?>
        <tr>
          <th scope="row"><?=$i++?></th>
          <td style="width:87%"><span class="dungLuong"><?=$value['dungluong']?></span></td>
          <td><button data-id="<?=$value['idDungLuong']?>" class="btn btn-warning editDungLuong">Sửa</button>
          </td>
          <td>
            <button data-id="<?=$value['idDungLuong']?>" class="btn btn-danger delDungLuong">Xóa</button>
          </td>
        </tr>
        <?php   }
      ?>

      </tbody>
    </table>
  </div>
</div>