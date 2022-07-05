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
        $option ='';

        if(isset($_GET['option'])){
            $option= $_GET['option'];
        }else{
            $option = 'cart';
        }
        switch ($option) {
            case 'cart':
                include 'users/layout/cart/cart.php';
                break;
            default:
            include 'users/layout/cart/cart.php';
                break;
        }
    ?>
    </div>

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
            DescreaseItem();
            IncreaseItem();
            DeleteItem();
            checkOut();
            searchPVC();
            searchProduct()
        });
        function searchProduct(){
            $("#searchBtn").click(function (e) { 
                e.preventDefault();
                var searchInfo= $("#searchInfo").val();
                window.location.replace("index.php?page=product&&act=searchProduct&&productName="+searchInfo);
            });
        }
        function searchPVC() {
            $("#searchPVCBtn").click(function (e) {
                e.preventDefault();
                var idCity = $("#idCityCollect option:selected").val();
                window.location.replace("index.php?page=cart&&act=checkPVC&&idCity="+idCity);
            });
        }

        function checkOut() {
            $("#checkOutBtn").click(function (e) {
                e.preventDefault();
                var tenNguoiNhan = $("#tenNguoiNhan").val();
                var address = $("#address").val();
                var sdtNguoiNhan = $("#sdtNguoiNhan").val();
                var note = $("#note").val();
                var sessionUser = $("#sessionUser").val();
                var idCity = $("#idCityCollect option:selected").val();
                if (tenNguoiNhan == '' || address == '' || sdtNguoiNhan == '' || idCity == '') {
                    swal("Thiếu thông tin mua hàng", {
                        icon: 'error',
                    });
                } else if (sessionUser == '') {
                    swal("Bạn cần đăng nhập để thanh toán", {
                        icon: 'error',
                    });
                } else {
                    swal({
                            title: "Bạn muốn đặt hàng ?",
                            buttons: true,
                            dangerMode: true,
                        })
                        .then((willDelete) => {
                            if (willDelete) {
                                $.ajax({
                                    url: 'index.php?page=product&&act=checkOut',
                                    type: "POST",
                                    data: {
                                        tenNguoiNhan: tenNguoiNhan,
                                        address: address,
                                        sdtNguoiNhan: sdtNguoiNhan,
                                        note: note,
                                        sessionUser: sessionUser,
                                        idCity: idCity,
                                    },
                                    success: function (data) {
                                        swal("Đặt hàng thành công", {
                                            icon: "success",
                                        }).then(() => {
                                            window.location.replace(
                                                "index.php?page=product");
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
                }

            });
        }

        function DeleteItem() {
            $('.deleteItem').click(function (e) {
                e.preventDefault();
                var idCT = $(this).attr("data-id");
                swal({
                        title: "Bạn muốn sản phẩm ?",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: 'index.php?page=product&&act=DeleteItem',
                                type: "POST",
                                data: {
                                    idCT: idCT,
                                },
                                success: function (data) {
                                    swal({
                                        title: 'Thành công',
                                        text: 'Đã xóa thành công',
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
                        } else {
                            swal("Ok! Không xóa", {
                                icon: 'error',
                            });
                        }
                    });
            });
        }

        function IncreaseItem() {
            $('.IncreaseCart').click(function (e) {
                e.preventDefault();
                var idCT = $(this).attr("data-id");
                console.log(idCT);
                $.ajax({
                    url: 'index.php?page=product&&act=UDUPCart',
                    type: "POST",
                    data: {
                        idCT: idCT,
                    },
                    success: function (data) {
                        swal({
                            title: 'Thành công',
                            text: 'Cập nhật thành công',
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

        function DescreaseItem() {
            $('.DescreaseCart').click(function (e) {
                e.preventDefault();
                var idCT = $(this).attr("data-id");
                $.ajax({
                    url: 'index.php?page=product&&act=UDGiamCart',
                    type: "POST",
                    data: {
                        idCT: idCT,
                    },
                    success: function (data) {
                        swal({
                            title: 'Thành công',
                            text: 'Cập nhật thành công',
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
    </script>
</body>

</html>