<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATShop</title>
    <!-- google font -->
    <link rel="preconnect" href="https:/fonts.gstatic.com">
    <link
        href="https:/fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,900&display=swap"
        rel="stylesheet">
    <!-- boxicons -->
    <link href='https:/unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- app css -->
    <link rel="stylesheet" href="users/layout/css/grid.css">
    <link rel="stylesheet" href="users/layout/css/app.css">
</head>

<body>

    <!-- header -->
    <?php include 'users/layout/layout2/header.php'?>
    <!-- end header -->
    <div class="main_container">
    <?php
            if(isset($_SESSION['thongbao'])){?>
                <div id="alert" <?php if($_GET['stt']=='success'){echo 'style="background:cornflowerblue"';}?> class="alert show">
                <strong></strong> <?=$_SESSION['thongbao']?> 
            </div>
            <button <?php if($_GET['stt']=='success'){echo 'style="background:yellow;color:black"';}?> class="closeAlert">&times;</button>
        <?php    }
        ?>
        <!--  -->
        <!-- <div id="alert" class="alert show">
            <strong>Danger!</strong>  action.
        </div>
        <button class="closeAlert">&times;</button> -->
        <?php include 'users/layout/home/slider.php'?>

        <!-- end hero section -->
        <?php include 'users/layout/home/promotion.php'?>

        <!-- promotion section -->
        <?php include 'users/layout/home/latest.php'?>

        <!-- end promotion section -->

        <!-- product list -->

        <!-- end product list -->
        <?php include 'users/layout/home/specialProd.php'?>

        <!-- special product -->
        <?php include 'users/layout/home/bestseller.php'?>
        <?php include 'users/layout/home/blog.php'?>

        <!-- end special product -->

        <!-- product list -->

        <!-- end product list -->

        <!-- blogs -->

        <!-- end blogs -->
    </div>
    <!-- hero section -->


    <!-- footer -->
    <?php include 'users/layout/layout2/footer.php'?>

    <!-- end footer -->

    <!-- app js -->
    <script src="users/layout/js/app.js"></script>
    <script src="users/layout/js/index.js"></script>
    <script src="users/layout/js/jquery-3.3.1.min.js"></script>
    <script>
        // var alert = document.getElementById('alert');
        $(document).ready(function () {
            showAlert();
            searchProduct();
        });
        function searchProduct(){
            $("#searchBtn").click(function (e) { 
                e.preventDefault();
                var searchInfo= $("#searchInfo").val();
                window.location.replace("index.php?page=product&&act=searchProduct&&productName="+searchInfo);
            });
        }
        function showAlert(){
            $(".closeAlert").click(function (e) { 
                e.preventDefault();
                $('#alert').removeClass();
                $('#alert').addClass('alert hide');
                $('.closeAlert').addClass('closeAlert hide');
            });
        }
    </script>
</body>

</html>