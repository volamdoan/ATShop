<header>
        <!-- mobile menu -->
        <div class="mobile-menu bg-second">
            <a href="index.php" class="mb-logo">ATShop</a>
            <span class="mb-menu-toggle" id="mb-menu-toggle">
                <i class='bx bx-menu'></i>
            </span>
        </div>
        <!-- end mobile menu -->
        <!-- main header -->
        <div class="header-wrapper" id="header-wrapper">
            <span class="mb-menu-toggle mb-menu-close" id="mb-menu-close">
                <i class='bx bx-x'></i>
            </span>
            <!-- top header -->
            <div class="bg-second">
                <div class="top-header container">
                    <ul class="devided">
                        <li>
                            <a href="#">0915491540</a>
                        </li>
                        <li>
                            <a href="#">volamdoanzxc1@gmail.com</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- end top header -->
            <!-- mid header -->
            <div class="bg-main">
                <div class="mid-header container">
                    <a href="index.php" class="logo">ATShop</a>
                    <div class="search">
                        <input type="text" id="searchInfo" placeholder="Tìm kiếm">
                        <span id="searchBtn"><i class='bx bx-search-alt'></i></span>
                    </div>
                    <ul class="user-menu">
                        <li><a href="#"><i class='bx bx-bell'></i><?php if(isset($countBill)&&$countBill!=0){echo '<small style="font-size:13px"><?=$countBill?></small>';}?></a></li>
                        <li><a href="index.php?page=login"><i class='bx bx-user-circle'></i></a></li>
                        <li><a href="index.php?page=cart"><i class='bx bx-cart'><?php if(isset($totalitem)){echo '<span style="font-size:14px;font-weight:bolder">'.$totalitem.'</span>';}?></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- end mid header -->
            <!-- bottom header -->
            <div class="bg-second">
                <div class="bottom-header container">
                    <ul class="main-menu">
                        <li><a href="index.php">TRANG CHỦ</a></li>
                        <!-- mega menu -->
                        <li class="mega-dropdown">
                            <a href="index.php?page=product">SẢN PHẨM<i class='bx bxs-chevron-down'></i></a>
                            <div class="mega-content">
                                <div class="row">
                                    <div class="col-3 col-md-12">
                                        <div class="box">
                                            <a href="index.php?page=product"><h3>LOẠI SẢN PHẨM</h3></a>
                                            <ul>
                                               <?php
                                               foreach ($allThietBi as $value) {?>
                                                <li><a href="index.php?page=product&&idThietBi=<?=$value['idThietBi']?>"><?=$value['tenThietBi']?></a></li>
                                              <?php } ?>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-3 col-md-12">
                                        <div class="box">
                                           <a href="index.php?page=product"><h3>THƯƠNG HIỆU</h3></a>
                                            <ul>
                                            <?php
                                               foreach ($allBrand as $value) {?>
                                                <li><a href="index.php?page=product&&idBrand=<?=$value['idBrand']?>"><?=$value['BrandName']?></a></li>
                                              <?php } ?>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="row img-row">
                                    <div class="col-3">
                                        <div class="box">
                                            <img src="users/layout/images/kisspng-beats-electronics-headphones-apple-beats-studio-red-headphones.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="box">
                                            <img src="users/layout/images/JBL_TUNE220TWS_ProductImage_Pink_ChargingCaseOpen.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="box">
                                            <img src="users/layout/images/JBL_JR 310BT_Product Image_Hero_Skyblue.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="box">
                                            <img src="users/layout/images/JBLHorizon_001_dvHAMaster.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!-- end mega menu -->
                        <li><a href="#">Blog</a></li>
                        <li><a href="index.php?page=contact">LIÊN HỆ</a></li>
                    </ul>
                </div>
            </div>
            <!-- end bottom header -->
        </div>
        <!-- end main header -->
    </header>