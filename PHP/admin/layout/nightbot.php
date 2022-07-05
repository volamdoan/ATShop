<div class="main_container">
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Thay đổi Hint</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <input class="form-control" placeholder="Hint Mới" id="newHint" type="text"><br>
        <input class="form-control" placeholder="Answer Mới" id="newanswer" type="text">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="submitNewHint">Thay đổi</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tủy chỉnh Hint</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h3>Bạn muốn xóa hay sửa ?</h3>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary " id="deleteHint">Xóa</button>
        <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#exampleModalCenter" >Sửa</button>
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
          <a class="nav-link" style="color:white" href="index.php?page=nightbot">NightBot <span
              class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:white" href="#" id="navbarDropdown" role="button"
            data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Tùy chọn
          </a>
          <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <h6 class="dropdown-header">Menu</h6>
            <a class="dropdown-item addkey" href="index.php?page=nightbot&&option=addHint">Thêm hint mới</a>
          </div>
        </li>
      </ul>

    </div>
  </nav>
  <br><br>
  <?php
    $option='';
    if(isset($_GET['option'])){
      $option=$_GET['option'];
    }
    switch ($option) {
      case 'addHint':
        include 'layout/addhint.php';
        break;
      
      default:
        # code...
        break;
    }
  ?>
  <?php 
    if(!isset($_GET['option'])){?>
      <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nội dung câu hỏi</th>
          <th scope="col">Nội dung câu trả lời</th>
          <th scope="col">Thực hiện</th>
        </tr>
      </thead>
      <tbody>
        <?php 
        $i=1;
        foreach ($allHint as $key => $value) {?>
            <tr>
          <th scope="row"><?=$i++?></th>
          <td><?=$value['question']?></td>
          <td><?=$value['reply']?></td>
          <td><button class='btn btn-danger editHintBtn' data-id="<?=$value['id']?>" data-toggle="modal" data-target="#exampleModal">Điều chỉnh</button></td>
        </tr>
        <?php }
        ?>
        
      </tbody>
    </table>
    
  <?php  }
  ?>
 
</div>