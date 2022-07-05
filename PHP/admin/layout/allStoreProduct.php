<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Tổng tồn</th>
      <th scope="col">Chỉnh sửa</th>
    </tr>
  </thead>
  <tbody>
      <?php
      $i=1;
      foreach ($allProducts as $value) {?>
        <tr>
        <th scope="row"><?=$i++?></th>
        <td><a href="index.php?page=storage&&act=singleProd&&option=singleProduct&&idProd=<?=$value['idProd']?>"><?=$value['tenSP']?></a></td>
        <td><?=$value['soLuongSP']?></td>
        <td>
          <a class="btn btn-warning" href="index.php?page=storage&&act=singleProd&&option=singleProduct&&idProd=<?=$value['idProd']?>">Chỉnh sửa</a>
        </td>
      </tr>
    <?php  }
      ?>
    
  </tbody>
</table>
