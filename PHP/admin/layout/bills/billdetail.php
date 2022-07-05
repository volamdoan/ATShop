<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Điều hàng</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <label>Đầu kho gửi</label>
      <select class="form-control" id="idKho1">
          <?php
            foreach ($allStorage as  $value) {?>
              <option value="<?=$value['idKho']?>"><?=$value['thongTin']?></option>

          <?php  }
          ?>
        </select><br>
          <input type="number" class="form-control" placeholder="Số lượng yêu cầu" id="Quantity">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="SendDieuHang">Send</button>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <?php
  $tinhtrang='';
        foreach ($result4 as $value) {?>
        <?php
          if($value['tinhtrang']==0){
            $tinhtrang ="Đã đặt";
          }else if($value['tinhtrang']==1){
            $tinhtrang="Chờ lấy hàng";
          }else if($value['tinhtrang']==2){
            $tinhtrang="Đang giao hàng";
          }else if($value['tinhtrang']==3){
            $tinhtrang="Đã giao hàng";
          }else if($value['tinhtrang']==4){
            $tinhtrang="Đang chuyển hoàn";
          }else if($value['tinhtrang']==5){
            $tinhtrang= "Đã chuyển hoàn";
          }else if($value['tinhtrang']==6){
            $tinhtrang= "Đã xác nhận";
          }
        ?>
  <div class="col-4 recieveInfo">
    <h3>Thông tin đặt hàng </h3>
    <span>Tên người đặt: </span> <b><?=$value['fullname']?></b><br>
    <span>Tên người nhận: </span><b><?=$value['tenNguoiNhan']?></b><br>
    <span>Số điện thoại người nhận: </span><b><?=$value['SDTNhanHang']?></b><br>
    <span>Địa chỉ giao hàng: </span><b><?=$value['diaChiNhanHang']?></b><br>
    <span>Tỉnh thành: </span><b><?=$value['tenTinh']?></b><br>
    <span>Note: </span><b><?=$value['ghiChu']?></b><br>

  </div>
  
</div>
<br><br>
<div class="row">
  <table class="table table-striped table-dark">
    <thead>
      <tr style="text-align:center">
        <th scope="col">#</th>
        <th scope="col">Tên sản phẩm</th>
        <th scope="col">Hình ảnh</th>
        <th scope="col">Phiên bản</th>
        <th scope="col">Đơn giá</th>
        <th scope="col">Số lượng</th>
        <th scope="col">Số lượng tồn kho</th>
        <th scope="col">Thực hiện</th>
      </tr>
      <tr>
        <td style="font-size:17px;padding-left:30px" colspan="2">
          <b>Tình trạng : </b><span><?=$tinhtrang?><?php if($count==1){echo " - Đơn đã đặt ";}?></span>
        </td>
        <td colspan="4"></td>
        <?php
          if($value['tinhtrang']==0||$value['tinhtrang']==4){?>
 <td colspan="1"><select style="height:39px;width:100%;margin:0px auto;border-radius:12px" id="sendBillSelector" class="form-control">
            <?php
              if($value['tinhtrang']==0){?>
                <option value="1">Chờ lấy hàng</option>
            <?php  }
            ?>
             <?php
              if($value['tinhtrang']==4){?>
            <option value="2">Nhận hàng hoàn</option>
            <?php  }
            ?>
            <?php
              if($value['tinhtrang']==0&&isset($count)&&$count==1){?>
            <option value="3">Hủy đơn hàng</option>
            <?php  }
            ?>
        </select></td>
        <td ><button style="width:100%" class="btn btn-light btn-rounded btn-icon" data-id="<?=$value['idHoaDon']?>" id="sendBill">Thực hiện</button></td>
        <?php  }
        ?>
       
      </tr>
    </thead>
    <tbody style="text-align:center">
      <?php
      $i=1;
      foreach ($result3 as  $value) {?>
      <tr >
        <th style="font-size:16px" scope="row"><?=$i++?></th>
        <td style="font-size:16px"><?=$value['tenSP']?></td>
        <td ><img style="width:200px;height:auto" src="<?=$image_update.$value['image']?>" alt=""></td>
        <td style="font-size:16px"><?=$value['dungluong']?>-<?=$value['tenMau']?></td>
        <td style="font-size:16px"><?=number_format((100-$value['discount'])/100*$value['price'])?></td>
        <td style="font-size:16px"><?=$value['soLuong']?></td>
        <td style="font-size:16px"><?=$tonKhoSP?></td>
        <td><button class="btn btn-warning dieuHangBtn" data-id="<?=$value['idCTHH']?>" data-toggle="modal" data-target="#exampleModalLong">Điều hàng</button></td>
      </tr>
      <?php }
      ?>

    </tbody>
  </table>
</div>
<?php    }
    ?>