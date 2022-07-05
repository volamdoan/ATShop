<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Màu sắc</th>
      <th scope="col">Dung lượng</th>
      <th scope="col">Kho</th>
      <th scope="col">Tồn kho</th>
      <th scope="col">Chỉnh sửa</th>
    </tr>
  </thead>
  <tbody>
      <?php
      $i=1;
      foreach ($Product as $value) {?>
        <tr>
        <th scope="row"><?=$i++?></th>
        <td><a href="index.php?page=storage&&act=singleProd&&option=UPDQTY&&idTon=<?=$value['idTon']?>&&idProd=<?=$value['idProd']?>&&idKho=<?=$value['idKho']?>"><?=$value['tenSP']?></a></td>
        <td><span style="margin-left:-5px;padding:8px 30px;background-color:<?=$value['maMau']?>"></span></td>
        <td><?=$value['dungluong']?></td>
        <td><?=$value['ThongTinKho']?></td>
        <td><?=$value['soLuongTonKho']?></td>
        <td>
          <a class="btn btn-warning" href="index.php?page=storage&&act=singleProd&&option=UPDQTY&&idTon=<?=$value['idTon']?>&&idProd=<?=$value['idProd']?>&&idKho=<?=$value['idKho']?>">Chỉnh sửa</a>
        </td>
      </tr>
    <?php  }
      ?>
    
  </tbody>
</table>
