<div class="section">
    <div class="container">
        <div class="section-header">
            <h2>SẢN PHẨM MỚI</h2>
        </div>
        <div class="row" id="latest-products">
            <?php
                foreach ($latestProduct as $value) {?>
                    <div class="col-3 col-md-6 col-sm-12">
                    <div class="product-card">
                        <div class="product-card-img">
                            <img src="<?=$imageUser?><?=$value['image']?>" alt="">
                            <img src="<?=$imageUser?><?=$value['image2']?>" alt="">
                        </div>
                        <div class="product-card-info">
                            <div class="product-btn">
                                <a class="btn-flat btn-hover btn-shop-now" href="index.php?page=product&&option=prodDetail&&idProd=<?=$value['idProd']?>">shop now</a>
                                <button class="btn-flat btn-hover btn-cart-add">
                                    <i class='bx bxs-cart-add'></i>
                                </button>
                                <button class="btn-flat btn-hover btn-cart-add">
                                    <i class='bx bxs-heart'></i>
                                </button>
                            </div>
                            <div class="product-card-name">
                                <a href="index.php?page=product&&option=prodDetail&&idProd=<?=$value['idProd']?>"><?=$value['tenSP']?></a>
                            </div>
                            <div class="product-card-price">
                                <span><del><?=number_format($value['maxPrice'],)?></del></span>
                                <span class="curr-price"><?=number_format((100-$value['discount'])*$value['minPrice']/100,)?></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php    }
            ?>

        </div>
        <div class="section-footer">
            <a href="index.php?page=product" class="btn-flat btn-hover">view all</a>
        </div>
    </div>
</div>