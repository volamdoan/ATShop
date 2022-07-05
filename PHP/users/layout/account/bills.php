<div class="table-cart">
<table>
  <tr>
    <th>Ngày đặt hàng</th>
    <th>Tổng giá trị đơn hàng</th>
    <th>Tình trạng đơn hàng</th>
  </tr>
  <?php
   $tinhtrang='';
  foreach ($resultBills as  $value) {?>
  
  <?php
          if($value['STT']==0){
            $tinhtrang ="Đã đặt";
          }else if($value['STT']==1){
            $tinhtrang="Chờ lấy hàng";
          }else if($value['STT']==2){
            $tinhtrang="Đang giao hàng";
          }else if($value['STT']==3){
            $tinhtrang="Đã giao hàng";
          }else if($value['STT']==4){
            $tinhtrang="Đang chuyển hoàn";
          }else if($value['STT']==5){
            $tinhtrang= "Đã chuyển hoàn";
          }else if($value['STT']==6){
            $tinhtrang= "Đã xác nhận";
          }
        ?>
    <tr>
    <td><a href="index.php?page=account&&option=billdetail&&idBill=<?=$value['idHoaDon']?>"><?=date('H:i d/m/Y',strtotime($value['ngayMua']))?></a></td>
    <td><?=number_format($value['Total']+$value['PhiVanChuyen'],)?></td>
    <td><?=$tinhtrang?></td>
    </tr>
 <?php }
  ?>
  
</table>
</div>