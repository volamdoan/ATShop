<div class="bg-main">
    <?php
        foreach ($ProductDetail as $value) {?>
    <div class="container">
        <div class="box">
            <div class="breadcumb">
                <a href="index.php">home</a>
                <span><i class='bx bxs-chevrons-right'></i></span>
                <a href="index.php?page=product">all products</a>
                <span><i class='bx bxs-chevrons-right'></i></span>
                <a href="./product-detail.html"><?=$value['tenSP']?></a>
            </div>
        </div>
        <div class="row product-row">
            <div class="col-5 col-md-12 productImage">
                <div class="product-img" id="product-img">
                    <img src="<?=$imageUser?><?=$value['image']?>" alt="">
                </div>
                <div class="box">
                    <div class="product-img-list">
                        <?php
                                foreach ($ProdGallery as $value1) {?>
                        <div class="product-img-item">
                            <img src="<?=$imageUser?><?=$value1['image']?>" alt="">
                        </div>
                        <?php   }
                            ?>

                    </div>
                </div>
            </div>
            <div class="col-7 col-md-12">
                <div class="product-info">
                    <h1>
                        <?=$value['tenSP']?>
                    </h1>
                    <div class="product-info-detail">
                        <span class="product-info-detail-title">Brand:</span>
                        <a href="#"><?=$value['BrandName']?></a>
                    </div>
                    <div class="product-info-detail">
                        <span class="product-info-detail-title">Price: </span>
                        <b>
                            <?php 
                                if(!isset($_GET['idCt'])){?>
                            <?=number_format($value['minPrice'],)?> - <?=number_format($value['maxPrice'],)?>
                            <?php    }else{?>
                            <?=number_format($detailPrice,)?>
                            <?php    }
                            ?>
                        </b>
                    </div>
                    <p class="product-description">
                        <div class="optionSelectContainer">
                            <?php
                                foreach ($Options as $value2) {?>
                            <a class="optionSelect"
                                href="index.php?page=product&&option=prodDetail&&idProd=<?=$idProd?>&&idCt=<?=$value2['idChitiet']?>"><span
                                    style="background:<?=$value2['maMau']?>;border-radius:50%;padding: 5px 17px;margin-right:5px;<?php if($value2['tenMau']==='Trắng'){echo "border:1px solid black";}?>"></span>
                                <?=$value2['dungluong']?></a>
                            <?php    }
                            ?>

                        </div>
                    </p>
                    <div class="product-info-price"></div>
                    <div class="product-quantity-wrapper">
                        <span class="product-quantity-btn">
                            <i class='bx bx-minus'></i>
                        </span>
                        <span class="product-quantity">1</span>
                        <span class="product-quantity-btn">
                            <i class='bx bx-plus'></i>
                        </span>
                    </div>
                    <?php
                        if(isset($_GET['idCt'])){?>
                    <input type="hidden" id="idCt" value=<?=$_GET['idCt']?>>
                    <?php    }
                    ?>

                    <div>
                        
                        <?php
                        if(isset($_GET['idCt'])){
                            if($value['soLuongSP']!=0&&$status!=0){?>
                                    <button class="btn-flat btn-hover addtocartBtn">Thêm vào giỏ hàng</button>
                            <?php }else {?>
                                    <button class="btn-flat btn-hover">Đặt hàng trước</button>
                            <?php }
                            } ?>
                    </div>
                </div>
            </div>
        </div>
        <menu class="menudetail">
            <ul>
                <li><a href="index.php?page=product&&option=prodDetail&&idProd=<?=$idProd?>&&option2=content">Bài
                        viết</a></li>
                <li><a href="index.php?page=product&&option=prodDetail&&idProd=<?=$idProd?>&&option2=info">Thông số</a>
                </li>
                <li><a href="index.php?page=product&&option=prodDetail&&idProd=<?=$idProd?>&&option2=comment">Bình
                        luận</a></li>
            </ul>
        </menu>
        <?php
                    $option2='';
                    if(isset($_GET['option2'])){
                        $option2= $_GET['option2'];
                    }else{
                        $option2='content';
                    }
                    switch ($option2) {
                        case 'info':
                            include 'users/layout/product/info.php';
                            break;
                        case 'content':
                            include 'users/layout/product/description.php';
                            break;
                        default:
                            # code...
                            break;
                    }
                ?>
        <div class="box">
            <div class="box-header">
                related products
            </div>
            <div class="row" id="related-products">
                <?php
                foreach ($orderProducts as $value) {?>
                <div class="product-card">
                    <div class="product-card-img">
                        <img src="<?=$imageUser?><?=$value['image']?>" alt="">
                        <img src="<?=$imageUser?><?=$value['image2']?>" alt="">
                    </div>
                    <div class="product-card-info">
                        <div class="product-btn">
                            <a href="index.php?page=product&&option=prodDetail&&idProd=<?=$value['idProd']?>"
                                class="btn-flat btn-hover btn-shop-now">shop
                                now</a>
                            <button class="btn-flat btn-hover btn-cart-add">
                                <i class='bx bxs-cart-add'></i>
                            </button>
                            <button class="btn-flat btn-hover btn-cart-add">
                                <i class='bx bxs-heart'></i>
                            </button>
                        </div>
                        <div class="product-card-name">
                            <?=$value['tenSP']?>
                        </div>
                        <div class="product-card-price">
                            <span
                                class="curr-price"><?=number_format((100-$value['discount'])/100*($value['minPrice']))?>-<?=number_format((100-$value['discount'])/100*($value['maxPrice']))?></span>
                        </div>
                    </div>
                </div>
                <?php   }
                
                ?>

            </div>
        </div>
    </div>
    <?php    }
    ?>

</div>