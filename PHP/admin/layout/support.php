<div class="main_container">
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Tùy chỉnh</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <input type="text" class="form-control" id="note" Placeholder="Phương pháp xử lý ...">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary " id="submitContactSPBtn">Save changes</button>
      </div>
    </div>
  </div>
</div>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark menu2">
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        </form>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <div class="mr-auto"></div>
            <ul class="navbar-nav my-2 my-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" style="color:white" href="index.php?page=support">Yêu cầu <span
                            class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" style="color:white" href="#" id="navbarDropdown" role="button"
                        data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Tùy chọn
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
                        <h6 class="dropdown-header">Menu</h6>
                        <a class="dropdown-item" href="index.php?page=support&&act=all">Tất cả</a>
                        <a class="dropdown-item" href="index.php?page=support&&act=notyet">Phiếu chưa xử lý</a>
                    </div>
                </li>

            </ul>

        </div>
    </nav>
    <br><br><br>
    <table class="table table-dark">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Tên</th>
                <th scope="col">Email</th>
                <th scope="col">Số điện thoại</th>
                <th scope="col">Tin nhắn</th>
                <th scope="col">Trạng thái</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $i=1;
            $stt='';
        foreach ($allSupport as $value) {?>
            <?php
                if($value['status']==0){
                    $stt="Chưa xử lý";
                }else{
                    $stt= 'Đã xử lý';
                }
            ?>
            <tr>
                <th scope="row"><?=$i++?></th>
                <td><a style="color:white" <?php if($value['status']!=0){echo 'class="deleteSPContactBtn"';}else{echo 'class="editSPContactBtn"';}?> data-id="<?=$value['idSport']?>" <?php if($value['status']==0){ echo'data-toggle="modal" data-target="#exampleModalCenter"';}?> href=""><?=$value['fullname']?></a></td>
                <td><?=$value['email']?></td>
                <td><?=$value['Phone']?></td>
                <td><?=$value['message']?></td>
                <td><?=$stt?></td>
            </tr>
    <?php    }
        ?>

        </tbody>
    </table>
</div>