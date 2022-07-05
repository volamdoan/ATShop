<div class="addkeyword">
    <div class="addForm">
    <form method="post" >
      <label>Tag nhãn</label>
      <input class="form-control" type="text" id="keyWord" placeholder="Key word . . ."><br>
      <button class="btn btn-warning" id="addKeyBtn">Thêm</button>
    </form>
    </div>
    <div class="editForm">
    <input class="form-control" type="text" id="newKeyWord" placeholder="Key word mới . . ."><br>
      <button class="btn btn-warning" id="editKeyWord">Sửa</button>
    </div>
    <br><br>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th style="width:50px" scope="col">#</th>
          <th style="width:170px" scope="col">Tên nhãn hiệu
          </th>
          <th style="text-align:center" colspan="2" scope="col">Tùy chọn</th>
        </tr>
      </thead>
      <tbody>
        <?php
      $i=1;
        foreach ($allKeyWork as $value) {?>
        <tr>
          <th scope="row"><?=$i++?></th>
          <td style="width:87%"><span class="brand"><?=$value['keyword']?></span></td>
          <td><button data-id="<?=$value['idKey']?>" class="btn btn-warning editKey">Sửa</button>
          </td>
          <td>
            <button data-id="<?=$value['idKey']?>" class="btn btn-danger deleteKey">Xóa</button>
          </td>
        </tr>
        <?php   }
      ?>

      </tbody>
    </table>
  </div>