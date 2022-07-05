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
        <!--  -->
        <!-- <div id="alert" class="alert show">
            <strong>Danger!</strong>  action.
        </div>
        <button class="closeAlert">&times;</button> -->
        <?php
            if(isset($_SESSION['thongbao'])){?>
        <div id="alert" <?php if($_GET['stt']=='success'){echo 'style="background:cornflowerblue"';}?>
            class="alert show">
            <strong></strong> <?=$_SESSION['thongbao']?>
        </div>
        <button <?php if($_GET['stt']=='success'){echo 'style="background:yellow;color:black"';}?>
            class="closeAlert">&times;</button>
        <?php    }
        ?>
        <div class="topnav" id="myTopnav">
            <a href="index.php?page=account&&option=usermanager" class="active">Account</a>
            <a href="index.php?page=account&&option=bills">Bills</a>
            <a href="index.php?page=account&&act=logout">Log out</a>
            <?php
                if(isset($_GET['idBill'])&&$billStt==3){?>
            <a id="xacnhandonBtn" href="">Đã nhận hàng</a>
            <?php }else if(isset($_GET['idBill'])&&$billStt==5&&$rebooked!=1){?>
                <a id="rebookBtn" href="">Đặt lại</a>
            <?php }
            ?>
        </div>

        <!-- product list -->
        <?php
            $option ='';
            if(isset($_GET['option'])){
                $option=$_GET['option'];
            }else{
                $option='usermanager';
            }
            switch ($option) {
                case 'usermanager':
                    include 'users/layout/account/manager.php';
                    break;
                case 'bills':
                    include 'users/layout/account/bills.php';
                    break;
                case 'billdetail':
                    include 'users/layout/account/bill_detail.php';
                    break;
                default:
                    # code...
                    break;
            }
        ?>
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
    <script src="users/layout/js/sweetalert.min.js"></script>
    <script>
        // var alert = document.getElementById('alert');
        $(document).ready(function () {
            showAlert();
            xacNhanDon();
            Rebooked();
            searchProduct();
        });
        function searchProduct(){
            $("#searchBtn").click(function (e) { 
                e.preventDefault();
                var searchInfo= $("#searchInfo").val();
                window.location.replace("index.php?page=product&&act=searchProduct&&productName="+searchInfo);
            });
        }
        function Rebooked() {
            $("#rebookBtn").click(function (e) {
                e.preventDefault();
                var idHoaDon = $("#hoadon").val();
                $.ajax({
                    url: 'index.php?page=account&&act=rebook1',
                    type: "POST",
                    data: {
                        idHoaDon: idHoaDon,
                    },
                    success: function (data) {
                        swal("Bạn vui lòng xác nhận đơn bằng mail", {
                            icon: "success",
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

        function xacNhanDon() {
            $("#xacnhandonBtn").click(function (e) {
                e.preventDefault();
                var idHoaDon = $("#hoadon").val();
                swal({
                        title: "Bạn đã nhận được hàng ?",
                        buttons: true,
                        dangerMode: true,
                    })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: 'index.php?page=account&&act=xacNhanDon',
                                type: "POST",
                                data: {
                                    idHoaDon: idHoaDon,
                                },
                                success: function (data) {
                                    swal("Xác nhận thành công", {
                                        icon: "success",
                                    }).then(() => {
                                        window.location.replace(
                                            "index.php?page=account&&option=bills");
                                    });
                                },
                                error: function (xhr, status, error) {
                                    console.log("Fail");
                                }
                            });
                        } else {
                            swal("Waiting", {
                                icon: "success",
                            });
                        }
                    });
            });
        }

        function showAlert() {
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