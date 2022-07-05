<table class="table">
      <thead class="thead-dark">
        <tr>
          <th style="width:50px" scope="col">#</th>
          <th style="width:190px" scope="col">Tên Kho hàng
          </th>
          <th style="width:300px" scope="col">Thông tin kho
          </th> 
        </tr>
      </thead>
      <tbody>
        <?php
      $i=1;
        foreach ($StorageAll as $value) {?>
        <tr>
          <th scope="row"><?=$i++?></th>
          <td style="width:30%"><span class="dungLuong"><?=$value['maKho']?></span></td>
          <td style="width:59%"><span class="dungLuong"><?=$value['thongTin']?></span></td>
        </tr>
        <?php   }
      ?>

      </tbody>
    </table>