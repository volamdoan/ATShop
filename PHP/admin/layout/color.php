<div class="main_container">
    <br><br><br>
<form class="addForm">
      <label>Màu sắc Sản phẩm</label>
      <input class="form-control" type="text" id="ColorName" name="ColorName" placeholder="Tên màu sắc . . ."><br>
      <input class="form-control" type="text" id="ColorCode" name="ColorCode" placeholder="Mã màu sắc . . ."><br>
      <button id="addColorBtn" class="btn btn-warning">Thêm</button>
    </form>
<form class="editForm">
    <div style="margin-left:5px" class="row">
    <input type="text" id="newColor" class=" form-control col-4" placeholder="Tên màu mới">
    <input style="margin-left:10px" type="text" id="newColorCode" class=" form-control col-4" placeholder="Mã màu mới"><br>
    <button style="margin-left:10px" id="editColorBtn" class="btn btn-secondary col-2">Sửa</button>
    </div>

</form>
    <br><br>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th style="width:50px" scope="col">#</th>
          <th style="width:170px" scope="col">Tên màu
          </th>
          <th style="width:170px" scope="col">Mã màu
          </th>
          <th style="text-align:center" colspan="2" scope="col">Tùy chọn</th>
        </tr>
      </thead>
      <tbody>
        <?php
      $i=1;
        foreach ($allColor as $value) {?>
        <tr>
          <th scope="row"><?=$i++?></th>
          <td style="width:30%"><span class="dungLuong"><?=$value['tenMau']?></span></td>
          <td style="width:59%"><span style="margin-left:-5px;padding:8px 30px;background-color:<?=$value['maMau']?>"></span></td>
          <td><button data-id="<?=$value['idMau']?>" class="btn btn-warning editColor">Sửa</button>
          </td>
          <td>
            <button data-id="<?=$value['idMau']?>" class="btn btn-danger delColor">Xóa</button>
          </td>
        </tr>
        <?php   }
      ?>

      </tbody>
    </table>
  </div>
</div>