<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Product Name</th>
      <th style="padding-left:95px" scope="col">Image</th>
      <th scope="col">Quantity</th>
      <th scope="col">Status</th>
      <th style="padding-left:40px" colspan="2" scope="col">Options</th>

    </tr>
  </thead>
  <tbody>
    <?php
      $i=1;
        foreach ($allProduct as $value) {?>
    <tr>
      <th scope="row"><?=$i++?></th>
      <td><a href="index.php?page=product&&act=editProd&&option=editProd&&idProd=<?=$value['idProd']?>"><?=$value['tenSP']?></a></td>
      <td><img style="width:200px;height:auto;margin:0px auto" src="<?=$image_update?><?=$value['image']?>" alt=""></td>
      <td><?=$value['soLuongSP']?></td>
      <td><label class="switch ">
          <input class="switchBtn" <?php if($value['status']==1){echo 'checked';}?> data-id="<?=$value['idProd']?>" type="checkbox">
          <span class="slider round"></span>
        </label>
      </td>
      <td>
        <button class="btn btn-danger optionbtn delProdBtn" data-id="<?=$value['idProd']?>">Delete</button><br>
        <a class="btn btn-warning optionbtn" href="index.php?page=product&&act=editProd&&option=editProd&&idProd=<?=$value['idProd']?>">Edit</a><br>
        

      </td>
    </tr>
    <?php   } ?>

  </tbody>
</table>
    <div class="num_page">
    <?php
    $currentPage='';
    if(isset($_GET['pageNum'])){
      $currentPage = $_GET['pageNum'];
    }else{
      $currentPage=1;
    }
  if($totalPage>1){?>
    <?php 
      if($currentPage>1){?>
        <a class="btn btn-primary" href="index.php?page=product&&pageNum=<?=$currentPage-1?>"><<</a>
      <?php }
    ?>
    <?php
    for ($i=1; $i <= $totalPage; $i++) { ?>
        <?php if($i>$currentPage-2 && $i<$currentPage+2){?>
      <a class="btn btn-<?php if($i==$currentPage){echo 'danger';}else{echo 'warning';}?>" href="index.php?page=product&&pageNum=<?=$i?>"><?=$i?></a>

       <?php } ?>
  <?php  }?>
    <?php if($currentPage<$totalPage){?>
      <a class="btn btn-primary" href="index.php?page=product&&pageNum=<?=$currentPage+1?>">>></a>
  <?php }}
?>
    </div>

