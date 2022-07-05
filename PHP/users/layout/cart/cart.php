<table class="table-cart">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Hình ảnh</th>
      <th scope="col">Đơn giá</th>
      <th scope="col">Màu sắc</th>
      <th scope="col">Phiên bản</th>
      <th colspan="3" scope="col">Số lượng</th>
      <th scope="col">Tổng tiền</th>

    </tr>
  </thead>
  <tbody>
    <?php
    $i=1;
    $total=0;
    foreach ($_SESSION['cart'] as $value) {?>
        <tr>
      <th scope="row"><?=$i++?></th>
      <td><?=$value[4]?></td>
      <td class="ImgCart"><img  src="<?=$imageUser.$value[5]?>" alt=""></td>
      <td><?=number_format($value[7],)?></td>
      <td><span style="margin-left:-5px;padding:8px 30px;background-color:<?=$value[2]?>"></span></td>
      <td><?=$value[6]?></td>
      <td><span class="DescreaseCart" data-id="<?=$value[0]?>"><i style="font-size:20px" class='bx bxs-no-entry' ></i></span></td>
      <td><input style="font-size:18px;width:40px;margin-top:-5px;text-align:center" type="number" disabled value=<?=$value[1]?>></td>
      <td><span class="IncreaseCart" data-id="<?=$value[0]?>"><i style="font-size:20px" class='bx bxs-plus-circle'></i></span></td>
      <td><?php if(($value[7]*$value[1])==0){?><a style="cursor:pointer" class="deleteItem" data-id="<?=$value[0]?>">Xóa</a><?php }else{?> <?=number_format($value[7]*$value[1])?><?php }?></td>
      <?php 
        $total +=($value[7]*$value[1])
      ?>
    </tr>
   <?php }
    ?>
    
    
  </tbody>
  <tfoot>
    <tr>
      <td style="text-align:left" colspan="2"> <b> Tổng tiền</b></td>
      <td class="emptyCol" colspan="7"></td>
      <td><?=number_format($total,)?></td>
    </tr>
    </tfoot>
</table>
<div class="form-container">
  <input type="hidden" id="sessionUser" <?php if(isset($_SESSION['user'])){?> value="<?=$_SESSION['user']?>" <?php }else{?> value='' <?php }?>>
        <h2 class="form-title">Thông tin thanh toán</h2>
        <form action="" class="checkout-form">
            <div class="input-line">
                <label for="name">Tên người nhận hàng</label>
                <input type="text" name="name" id="tenNguoiNhan" placeholder="Tên người nhận hàng">
            </div>
            <div class="input-container">
            <div class="input-line">
                <label for="name">Địa chỉ nhận hàng</label>
                <input type="text" name="name" id="address" placeholder="Địa chỉ nhận hàng">
            </div>
            <div style="margin-left:5px" class="input-line">
                <label for="name">Thành phố</label>
                <select style="color:black;font-size:16px;" id="idCityCollect" class="cityselect">
                  <?php
                    foreach ($allTinh as $value) {?>
                      <option style="color:#C3C3C3" <?php if(isset($_GET['idCity'])&&$value['idTinh']==$_GET['idCity']){echo 'selected';}?> value="<?=$value['idTinh']?>"><?=$value['tenTinh']?></option>
                  <?php  }
                  ?>
                  
                </select>
            </div>
            <div style="margin-left:5px" class="input-line">
                <label for="name">Phí vận chuyển</label>
                <input type="text" value="<?=$PVC?>" >
            </div>
            <div style="margin-left:5px" >
                 <span id="searchPVCBtn" style="font-size:33px;margin-top:37px; border-radius:30%;cursor:pointer;color:red"><i class='bx bx-search-alt'></i></span>
            </div>
            </div>
            <div class="input-container">
                <div class="input-line">
                    <label for="name">Số điện thoại</label>
                    <input type="text" name="name" id="sdtNguoiNhan" placeholder="Số điện thoại">
                </div>
                <div class="input-line">
                    <label for="name">Ghi chú</label>
                    <input type="text" name="name" id="note" placeholder="Ghi chú">
                </div>
            </div>
            <?php
              if($total!=0){?>
                <input type="button" id="checkOutBtn" value="Thanh toán">
            <?php  }
            ?>
        </form>
    </div>
    <br><br>