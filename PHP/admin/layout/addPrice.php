<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Phiên bản</th>
      <th scope="col">Màu sắc</th>
      <th scope="col">Đơn giá</th>
      <th scope="col">Chỉnh giá</th>

    </tr>
  </thead>
  <tbody>
    <?php
      $i=1;
      foreach ($DetailProduct as $key => $value) {?>
        <tr>
      <th scope="row"><?=$i++?></th>
      <td><?=$productName?></td>
      <td><?=$value['dungluong']?></td>
      <td><span style="background:<?=$value['maMau']?>;padding:10px 30px"></span></td>
      <td><?=number_format($value['price'],)?></td>
      <td style="width:180px" ><button data-id="<?=$value['idChitiet']?>" class="btn btn-warning PriceEditBtn">Chỉnh giá</button></td>
    </tr>
    <?php  }
    ?>
    <!-- <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@twitter</td>
      <td style="width:180px" ><input class="form-control" type="number"></td>

    </tr> -->
  </tbody>
  <tfoot class="EditPriceArea">
    <tr>
      <td><input class="form-control" id="newPrice" type="number" ></td>
      <td><button class="btn btn-info editPricebtn">Sửa</button></td>
    </tr>
  </tfoot>
</table>