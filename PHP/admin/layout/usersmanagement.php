<br><br>
<!-- Button trigger modal -->
<!-- Modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Edit Status</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <input class="form-control" type="text" placeholder="Ghi chú . . " id="note">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary submitUDUserBtn" id="submitUDUserBtn">Submit</button>
      </div>
    </div>
  </div>
</div>

<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Username</th>
      <th scope="col">Full name</th>
      <th scope="col">Tình trạng</th>
      <th scope="col">Vai trò</th>
      <th style="text-align:center" scope="col">Tùy chọn</th>
    </tr>
    <tr>
        <th scope="col" colspan="6"> <select class="form-control" name="" id="UserAction">
                <option value="0">Block</option>
                <option value="2">Active</option>
            </select></th>
    </tr>
  </thead>
  <tbody>
      <?php
      $i=1;
      $status='';
      foreach ($allUsers as $value) {?>
        <?php
            if($value['status']==0){
                $status='Blocking';
            }else if($value['status']==1){
                $status='Pending';
            }else{
                $status="Active";
            }
        ?>
        <tr>
        <th scope="row"><?=$i++?></th>
        <td><?=$value['username']?></td>
        <td><?=$value['fullname']?></td>
        <td><?=$status?></td>
        <th><a class="btn btn-outline-warning btn-rounded editRoleOption"
  data-mdb-ripple-color="dark" data-toggle="modal" data-target="#exampleModalCenter2" data-id="<?=$value['idUser']?>" href=""><?=$value['tenRole']?></a></th>
        <td><a class="btn btn-warning editUserbtn" data-toggle="modal" data-target="#exampleModalCenter" data-id="<?=$value['idUser']?>">Thực hiện</a></td>  
      </tr>
  
      <?php }
      ?>
  </tbody>
</table>

<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle2">Edit Role</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <select class="form-control" id="idRole">
            <?php
                foreach ($allRole as  $value) {?>
                    <option value="<?=$value['idRole']?>"><?=$value['tenRole']?></option>
            <?php    }
            ?>    
        </select><br>
        <input class="form-control" type="text" id="note2" placeholder="Ghi chú">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="btnSubmitChangeRole">Save changes</button>
      </div>
    </div>
  </div>
