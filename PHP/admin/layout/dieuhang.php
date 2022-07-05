<div class="main_container">
<div class="row">
    <div class="col-4">
        <select style="margin-top:40px" id="BillOption" class="form-control">
            <option value="all">Tất cả hóa đơn</option>
            <option value="booked">Hóa đơn đã đặt</option>
            <option value="pickedUp">Hóa đơn đang giao</option>
            <option value="success">Hóa đơn thành công</option>
            <option value="return">Hóa đơn chuyển hoàn</option>
            <?php
                if(!isset($_GET['option'])){?>
                    <option value="allPhieu">Tất cả các phiếu điều hàng</option>
            <?php    }else{?>
                    <option value="dieuhangdi">Phiếu yêu cầu điều hàng tạo</option>
                    <option value="dieuhangden">Phiếu yêu cầu điều hàng nhận</option>
            <?php    }
            ?>



        </select>
        <input type="hidden" id="area" value="<?php if(isset($_GET['option'])){echo $_GET['option']; }else{echo '';}?>">
        <input type="hidden" id="option2" value="<?php if(isset($_GET['option'])){echo $_GET['option']; }else{echo '';}?>">

    </div>
    <div style="margin-top:43px" >
        <button class="btn btn-primary" id="searchBillBtn">Tìm</button>
    </div>
</div><br><br>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Hình ảnh</th>
      <th scope="col">Phiên bản</th>
      <th scope="col">Số lượng</th>
      <th scope="col">Tình trạng</th>
      <th scope="col">Kho chuyển yêu cầu</th>
      <th scope="col">Ngày điều hàng</th>
      <th scope="col">Ngày nhận hàng</th>

      <?php
       if(isset($_GET['option'])&&($_GET['act']=='dieuhangden')||($_GET['act']=='dieuhangdi')){?>
      <th scope="col">Thực hiện</th>
      <?php } ?>
    </tr>
  </thead>
  <tbody>
    <?php 
    $i=1;
    $stt='';
      foreach ($allPhieu as  $value) {?>
      <?php
        if($value['sttDieuHang']==0){
          $stt='Đang yêu cầu';
        }else if($value['sttDieuHang']==1){
          $stt="Đang vận chuyển";
        }else if($value['sttDieuHang']==2){
          $stt="Thành công";
        }
      ?>
        <tr>
      <th scope="row"><?=$i++?></th>
      <td><?=$value['tenSP']?></td>
      <td><img style="width:200px;height:auto" src="<?=$image_update. $value['image']?>" alt=""></td>
      <td><?=$value['tenMau']?> - <?=$value['dungluong']?></td>
      <td><?=$value['soLuong']?></td>
      <td><?=$stt?></td>
      <td><?=$value['thongTin']?></td>
      <td><?=date('H:i d/m/Y',strtotime($value['ngayGuiHang']))?></td>
      <td><?=date('H:i d/m/Y',strtotime($value['ngayNhanHang']))?></td>

      <?php
        if(isset($_GET['option'])&&($_GET['act']=='dieuhangden')&&$value['sttDieuHang']==0){?>
      <td><button style="color:blue" class="btn btn-warning sendHangBtn" data-id="<?=$value['idPhieu']?>">Gửi hàng</button></td>
      <?php  }
      ?>
      <?php
        if(isset($_GET['option'])&&($_GET['act']=='dieuhangdi')&&$value['sttDieuHang']==1){?>
      <td><button style="color:blue" class="btn btn-warning recieveHangBtn" data-id="<?=$value['idPhieu']?>">Nhận hàng</button></td>
      <?php  }
      ?>
      <?php
        if(isset($_GET['act'])&&$_GET['act']=='dieuhangdi'&&$stt=="Đang yêu cầu"){?>
      <td><button style="color:blue" class="btn btn-warning deletePhieuBtn" data-id="<?=$value['idPhieu']?>">Xóa</button></td>
      <?php  }
      ?>
    </tr>
    <tr>
      <td style="border:none"><input type="hidden" value="<?=$idKho?>" id="idKho2"></td>
    </tr>
    <?php  }
    ?>

    
    
  </tbody>
</table>
</div>