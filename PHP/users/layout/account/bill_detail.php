<div class="table-cart">
    <table>
        <tr>
            <th>Tên sản phẩm</th>
            <th>Hình ảnh</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th>Tổng tiền</th>
        </tr>
        <?php
            if(isset($_GET['idBill'])){?>
                <input type="hidden" id="hoadon" value="<?=$_GET['idBill']?>">
        <?php    }
        ?>
        <?php
        $tong=0;
        
    foreach ($resultBills as $key => $value) {?>
        
        <tr>
            <td><?=$value['tenSP']?></td>
            <td><img style="width:200px" src="<?=$imageUser.$value['image']?>" alt=""></td>
            <td><?=number_format($value['price'],)?></td>
            <td><?=$value['soLuong']?></td>
            <td><?=number_format(($value['price']*$value['soLuong']),)?></td>
            <?php $tong+=($value['price']*$value['soLuong'])?>
        </tr>
     <?php   }
        ?>
        <tr style="border-top:1px solid black">
            <td><h4>Phí ship</h4></td>
            <td colspan="3"></td>
            <td><h4><?=number_format($PhiVanChuyen,)?></h4></td>

        </tr>
        <tr>
            <td><h4>Tổng cộng</h4></td>
            <td colspan="3"></td>
            <td><h4><?=number_format(($tong+$PhiVanChuyen),)?></h4></td>

        </tr>
    </table>