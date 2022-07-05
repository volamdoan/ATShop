<div class="main_container">
    <div class="row">
    <div class="col-4">
        <?php
            if(!isset($_GET['option'])||$_GET['option']!='billdetail'){?>
        <select style="margin-top:40px" id="BillOption" class="form-control">
            <option value="all">Tất cả hóa đơn</option>
            <option value="booked">Hóa đơn đã đặt</option>
            <option value="pickedUp">Hóa đơn đang giao</option>
            <option value="success">Hóa đơn thành công</option>
            <option value="return">Hóa đơn chuyển hoàn</option>
            <?php
                if(!isset($_GET['option'])||$_GET['option']=='all'){?>
                    <option value="allPhieu">Tất cả các phiếu điều hàng</option>
            <?php    }else{?>
                    <option value="dieuhangdi">Phiếu yêu cầu điều hàng tạo</option>
                    <option value="dieuhangden">Phiếu yêu cầu điều hàng nhận</option>
            <?php    }
            ?>



        </select>
        <?php    }
        ?>

        <input type="hidden" id="area" value="<?php if(isset($_GET['option'])){echo $_GET['option']; }else{echo '';}?>">
        <input type="hidden" id="option2" value="<?php if(isset($_GET['option'])){echo $_GET['option']; }else{echo '';}?>">

    </div>
    <?php
            if(!isset($_GET['option'])||$_GET['option']!='billdetail'){?>
    <div style="margin-top:43px" >
        <button class="btn btn-primary" id="searchBillBtn">Tìm</button>
    </div>
    <?php    }
        ?>
</div><br><br>
<?php
$option='';
    if(isset($_GET['option'])){
        $option=$_GET['option'];
    }
    switch ($option) {
        case 'all':
            include 'layout/bills/allbill2mien.php';
            break;
        case 'billdetail':
            include 'layout/bills/billdetail.php';
            break;
        case 'area1':
            include 'layout/bills/allbill2mien.php';
            break;
        case 'area2':
            include 'layout/bills/allbill2mien.php';
            break;
        case 'area3':
            include 'layout/bills/allbill2mien.php';
            break;
        default:
            # code...
            break;
    }
?>
</div>
