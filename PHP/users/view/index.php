<?php
    $page = '';
    if(isset($_GET['page'])){
        $page= $_GET['page'];
    }else{
        $page='home';
    }
    switch ($page) {
        case 'home':
            include 'users/layout/home.php';
            break;
        case 'product':
            include 'users/layout/product.php';
            break;
        case 'cart':
            include 'users/layout/cart.php';
            break;
        case 'login':
            include 'users/layout/login.php';
            break;
        case 'account':
            include 'users/layout/account.php';
            break;
        case 'contact':
            include 'users/layout/contact.php';
            break;
        default:
            # code...
            break;
    }
?>