<table class="table">
    <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Ngày đặt hàng</th>
            <th scope="col">Người đặt hàng</th>
            <th scope="col">Giá trị đơn hàng</th>
            <th scope="col">Phí vận chuyển</th>
            <th scope="col">Tổng giá trị</th>
            <th scope="col">Kho hàng</th>
            <th scope="col">Tình trạng</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i=1;
        $stt='';
        foreach ($allBills as  $value) {?>
            <?php
                $status1= $value['sttHD'];
                if($status1==0){
                    $stt='Đã đặt';
                }else if($status1==1){
                    $stt='Chờ lấy hàng';
                }else if($status1==2){
                    $stt='Đang giao';
                }else if($status1==3){
                    $stt='Thành công';
                }else if($status1==4){
                    $stt='Từ chối nhận hàng';
                }else if($status1==5){
                    $stt='Đã chuyển hoàn';
                }else if($status1==6){
                    $stt='Đã xác nhận';
                }
            ?>
        <tr>
            <th scope="row"><?=$i++?></th>
            <td><a href="index.php?page=bills&&act=billdetail&&option=billdetail&&idBill=<?=$value['idHoaDon']?>"><?=date('d/m/Y H:i',strtotime($value['ngayMua']))?></a></td>
            <td><?=$value['fullname']?></td>
            <td><?=number_format($value['Total'],)?></td>
            <td><?=$value['PhiVanChuyen']?></td>
            <td><?=number_format($value['Total']+$value['PhiVanChuyen'],)?></td>
            <td><?=$value['thongTin']?></td>
            <td><?=$stt?></td>
        </tr>
        <?php    }
      ?>
    </tbody>
</table>