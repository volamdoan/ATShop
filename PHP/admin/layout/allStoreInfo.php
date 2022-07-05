<form style="margin-left:10px" class="editForm">
    <div class="row">
    <input style="margin-right:10px" type="text" class="form-control col-4" placeholder="Mã kho mới" id="maKhoMoi">
    <input style="margin-right:10px" type="text" class="form-control col-4" placeholder="Thông tin mới" id="thongTinMoi">
    <button class="form-control btn btn-warning col-1" id="updateStorageBtn">Sửa</button>
</div>
</form>
<br>
<table class="table">
      <thead class="thead-dark">
        <tr>
          <th style="width:50px" scope="col">#</th>
          <th style="width:190px" scope="col">Tên Kho hàng
          </th>
          <th style="width:300px" scope="col">Thông tin kho
          </th>
          <th style="text-align:center" colspan="2" scope="col">Tùy chọn</th>
        </tr>
      </thead>
      <tbody>
        <?php
      $i=1;
        foreach ($StorageAll as $value) {?>
        <tr>
          <th scope="row"><?=$i++?></th>
          <td style="width:30%"><?=$value['maKho']?></span></td>
          <td style="width:59%"><?=$value['thongTin']?></span></td>
          <td><button data-id="<?=$value['idKho']?>" class="btn btn-warning editKho">Sửa</button>
          </td>
          <td>
            <button data-id="<?=$value['idKho']?>" class="btn btn-danger delKho">Xóa</button>
          </td>
        </tr>
        <?php   }
      ?>

      </tbody>
    </table>