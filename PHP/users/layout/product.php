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
    <?php
    if(!isset($_GET['idProd'])){
        include 'users/layout/product/allProd.php';
    }else{
        include 'users/layout/product/Proddetail.php';
    }
    ?>
    </div>
    <!-- hero section -->
    <!-- footer -->
    <?php include 'users/layout/layout2/footer.php'?>

    <!-- end footer -->

    <!-- app js -->
    <script src="users/layout/js/app.js"></script>
    <script src="users/layout/js/index.js"></script>
    <script src="users/layout/js/jquery-3.3.1.min.js"></script>
    <script src="users/layout/js/sweetalert.min.js"></script>
    <script>
        $(document).ready(function () {
            slider();
            addToCart();
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
        function addToCart() {
            $('.addtocartBtn').click(function (e) {
                e.preventDefault();
                var idCt = $("#idCt").val();
                $.ajax({
                    url: 'index.php?page=product&&act=addToCart',
                    type: "POST",
                    data: {
                        idCt: idCt,
                    },
                    success: function (data) {
                        swal({
                            title: 'Tha??nh c??ng',
                            text: '??a?? th??m va??o gio?? ha??ng',
                            icon: 'success',
                            button: "OK",
                        }).then(() => {
                            window.location.reload();
                        });
                    },
                    error: function (xhr, status, error) {
                        console.log("Fail");
                    }
                });
            });
        }

        function slider() {
            document.querySelectorAll('.product-img-item').forEach(e => {
                e.addEventListener('click', () => {
                    let img = e.querySelector('img').getAttribute('src')
                    document.querySelector('#product-img > img').setAttribute('src', img)
                })
            })
        }
    </script>

</body>

</html>