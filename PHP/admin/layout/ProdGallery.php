<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Hình ảnh</th>
      <th scope="col">Lựa chọn</th>
      <th scope="col">Chọn</th>
      <!-- <th scope="col"><a  class="btn btn-warning" href="index.php?page=product&&act=unsetImage&&idProd=<?=$_GET['idProd']?>">Xóa hết</a></th> -->
    </tr>
  </thead>
  <tbody>
    <?php
        $i=1;
        foreach ($prodGallery as $value) {?>
        <tr>
            <th scope="row"><?=$i++?></th>
            <td><img style="width:200px;height:auto" src="<?=$image_update?><?=$value['image']?>" alt=""><?=$value['image']?></td>
            <td><a class="btn btn-danger deleteProdImg" data-id="<?=$value['idGallery']?>" href="">Xóa</a></td>
            <td style="width:300px">
            <?php
            if($value['image']!=$imageProd){?>
            
          <a style="margin-left:5px;float:left;" class="btn btn-info chooseProdImg" href="index.php?page=product&&act=selectProdImg&&idProd=<?=$_GET['idProd']?>&&imageName=<?=$value['image']?>">Chọn hình</a><br>

            <?php }else{
              echo '<button disabled style="float:left;width:100px" class="btn btn-secondary" href="">Đã chọn</button><br>';
              
            }?>
            <?php if($value['image']!=$imageProd2){?>
            <a style="margin-top:-14px;float:left;" class="btn btn-warning" href="index.php?page=product&&act=selectProdImg2&&idProd=<?=$_GET['idProd']?>&&imageName=<?=$value['image']?>">Chọn hình 2</a>
            </td>
            <?php }else{
               echo '<button disabled style="margin-left:0px;margin-top:-14px;width:100px" class="btn btn-secondary" href="">Đã chọn</button><br>';
            }?>
            
        </tr>
    <?php } ?>
   
  </tbody>
</table>
