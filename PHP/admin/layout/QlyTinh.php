<div class="main_container">
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Thay đổi tỉnh</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <input type="text" class="form-control" placeholder="Tên tỉnh mới " id="newTinh">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="subeditTinhBtn">Save</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    <!-- Button trigger modal -->
    <!-- Modal 1-->
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="text" class="form-control" placeholder="Tên miền mới . . " id="tenMienMoi">
                </div>
                <div class="modal-footer">
                    <button type="button" id="submitNewMienBtn" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <br>

    <div class="row">
        <input type="text" class="form-control col-3" id="TenMien" placeholder="Tên miền">
        <button class=" btn btn-primary form-control col-1" id="submitMien">Thêm</button>
        <input style="margin-left:6.5%" type="text" class="form-control col-3 " id="tenTinh"
            placeholder="Tên tỉnh thành">
        <select class="form-control col-3" id="myselect">
            <?php
                foreach ($allMien as  $value) {?>
            <option value="<?=$value['idMien']?>"><?=$value['tenMien']?></option>
            <?php    }
            ?>

        </select>
        <button style="margin-left:7px" class=" btn btn-primary form-control col-1" id="submitTinh">Thêm</button>
    </div>
</div>
</div>
<div class="tabelContainer">
    <div class="tableCol">
        <div class="grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Các Vùng Miền</h4>
                    </p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Tên miền</th>
                                <th>Chỉnh sửa</th>
                                <th>Xóa</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                    $i=1;
                    foreach ($allMien as  $value) {?>
                            <tr>
                                <td><?=$i++?></td>
                                <td><?=$value['tenMien']?></td>
                                <td><a class="btn btn-warning editMien" data-id="<?=$value['idMien']?>"
                                        data-toggle="modal" data-target="#exampleModalLong">Edit</a></td>
                                <td><a class="btn btn-danger deleteMien" data-id="<?=$value['idMien']?>">Xóa</a></td>
                            </tr>
                            <?php } ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="tableCol">
    <div class="grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Các Tỉnh</h4>
                </p>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên tinh</th>
                            <th>Miền</th>
                            <th>Chỉnh sửa</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                    $i=1;
                    foreach ($allTinh as  $value) {?>
                        <tr>
                            <td><?=$i++?></td>
                            <td><?=$value['tenTinh']?></td>
                            <td><?=$value['tenMien']?></td>
                            <td><a class="btn btn-warning editTinh" data-id="<?=$value['idTinh']?>" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Edit</a></td>
                            <td><a class="btn btn-danger deleteTinh" data-id="<?=$value['idTinh']?>">Xóa</a></td>
                        </tr>
                        <?php } ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </div>

</div>

</div>