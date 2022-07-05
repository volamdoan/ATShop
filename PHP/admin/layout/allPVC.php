<br>
<div class="row">
    <div class="col-4">
        <h3 style="text-align:center">Miền Bắc</h3>
        <table style="text-align:center" class="table table-dark">
            <tr >
                <td>Tên Tỉnh</td>
                <td>Phí Vận Chuyển</td>
            </tr>
            <?php
                foreach ($allMienBac as $key => $value) {?>
                    <tr style="text-align:left">
                    <td><?=$value['tenTinh']?></td>
                    <td><?=number_format($value['phiVanChuyen'])?></td>
                    </tr>
            <?php    }
            ?>
        </table>
    </div>
    <div class="col-4">
       <h3 style="text-align:center">Miền Trung</h3>  
       <table style="text-align:center" class="table table-light">
            <tr >
                <td>Tên Tỉnh</td>
                <td>Phí Vận Chuyển</td>
            </tr>
            <?php
                foreach ($allMienTrung as $key => $value) {?>
                    <tr style="text-align:left">
                    <td><?=$value['tenTinh']?></td>
                    <td><?=number_format($value['phiVanChuyen'])?></td>
                    </tr>
            <?php    }
            ?>
        </table>
    </div>
    <div class="col-4">
        <h3 style="text-align:center">Miền Nam</h3>
        <table style="text-align:center" class="table table-success">
            <tr >
                <td>Tên Tỉnh</td>
                <td>Phí Vận Chuyển</td>
            </tr>
            <?php
                foreach ($allMienNam as $key => $value) {?>
                    <tr style="text-align:left">
                    <td><?=$value['tenTinh']?></td>
                    <td><?=number_format($value['phiVanChuyen'])?></td>
                    </tr>
            <?php    }
            ?>
        </table>
    </div>

</div>