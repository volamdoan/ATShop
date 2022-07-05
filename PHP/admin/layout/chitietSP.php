<?php
        foreach ($ProductName as  $value) {?>
<label>Tên sản phẩm: </label><span> <?=$value['tenSP']?></span><br><br>
<?php    }
    ?>
    <form action="index.php?page=product&&act=themPhienBanSP&&idProd=<?=$_GET['idProd']?>" method="POST">
    <div style="margin-left:4px" class="row">
    <select style="margin-right:10px" class="form-control col-4" required name="maMau" id="">
        <option selected value="">Chọn màu</option>
    <?php
        foreach ($allColor as $key => $value) {?>
            <option value="<?=$value['idMau']?>"><?=$value['tenMau']?></option>
    <?php    }
    ?>
    </select>
    <select class="form-control col-4" required name="maDungLuong" id="">
        <option selected value="">Chọn phiên bản</option>
    <?php
        foreach ($allDungLuong as $key => $value) {?>
            <option value="<?=$value['idDungLuong']?>"><?=$value['dungluong']?></option>
    <?php    }
    ?>
    </select>
    <button style="margin-left:10px" name="addOptionBtn" class="btn btn-warning">Thêm</button>
    </div>
    </form>
  
    
<br>
<h4>Quản lý chi tiết</h4>
<table class="table">
    <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Màu</th>
            <th scope="col">Dung Lượng</th>
            <th scope="col">Tùy chọn</th>
        </tr>
    </thead>
    <tbody>
        <?php
            $i=1;
                foreach ($SingleProduct2 as $key => $value) {?>
        <tr>
            <th scope="row"><?=$i++?></th>
            <td><?=$value['tenMau']?></td>
            <td><?=$value['dungluong']?></td>
            <td><a class="btn btn-danger deleteCTSP" data-id="<?=$value['idChitiet']?>" href="">Xóa</a></td>
        </tr>
        <?php    }
            ?>

    </tbody>
</table>