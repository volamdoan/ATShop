<br><br>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <select class="form-control" id="shipResult">
            <option value="1">Thành công</option>
            <option value="0">Thất bại</option>
        </select><br>
        <input type="text" class="form-control" id="note" placeholder="Ghi chú . . ">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="SubmitShipRs">Submit</button>
      </div>
    </div>
  </div>
</div>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Mã Vận Đơn</th>
      <th scope="col">Số lượng sản phẩm</th>
      <th scope="col">Tổng giá trị</th>
      <th scope="col">Tình trạng</th>
      <th scope="col">Chọn</th>
    </tr>
  </thead>
  <tbody>
      <?php
      $i=1;
      $tinhtrang='';
        foreach ($allTransportBills as  $value) {?>
            <?php
                if($value['status']==1){
                    $tinhtrang ="Chờ lấy hàng";
                  }else if($value['status']==2){
                    $tinhtrang="Đang giao";
                  }else if($value['status']==3){
                    $tinhtrang="Đã giao";
                  }else if($value['status']==4){
                    $tinhtrang="Chuyển hoàn";
                  }
            ?>
            <tr>
            <th scope="row"><?=$i++?></th>
            <td><?=$value['maVanDon']?></td>
            <td><?=$value['soLuongSP']?></td>
            <td><?=number_format($value['TongGiaTri'],)?></td>
            <td><?=$tinhtrang?></td>
            <td><?php
                if($value['status']==1){?>
                <button class="btn btn-warning pickupBtn" data-id="<?=$value['maVanDon']?>">Lấy hàng</button>
               <?php }else if($value['status']==2){?>
                   <button class="btn btn-warning shippingBtn" data-toggle="modal" data-target="#exampleModalCenter" data-id="<?=$value['maVanDon']?>">Giao hàng</button>
            <?php   }
            ?></td>
          </tr>
       <?php }
      ?>
    
  </tbody>
</table>