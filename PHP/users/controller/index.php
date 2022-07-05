<?php
    include 'users/model/index.php';
    include 'users/model/get_bot_message.php';
    include 'global.php';
    // $conn = mysqli_connect('localhost','root','','asmphp2');
    $Product = new Product();
    $Brand = new Brand();
    $ThietBi = new ThietBi();
    $allBrand=$Brand->getAllBrand();
    $allThietBi = $ThietBi->getAllThietBi();
    $TINH = new Tinh();
    $allTinh = $TINH->all();
    $CONTACT = new CONTACT();
    if(isset($_GET['page'])&&$_GET['page']!='contact'||!isset($_GET['page'])){
        $CONTACT->deleteMessage();
    }
    $page ='';
    if(isset($_GET['page'])){
        $page=$_GET['page'];
    }else{
        $page='home';
    }
    if(isset($_SESSION['cart'])&&count($_SESSION['cart'])!=0){
        $totalitem=count($_SESSION['cart']);
    }
    switch ($page) {
        case 'contact':
            $CONTACT = new CONTACT();
            $imgAvatar1="user_avatar.png";
            $imgAvatar2="bot_avatar.png";
            $res= $CONTACT->getAllMessage($conn);
            $act='';
            if(isset($_GET['act'])){
                $act = $_GET['act'];
            }
            switch ($act) {
                case 'sendcontact':
                    if(isset($_POST['ContactSendBtn'])){
                        $name=$_POST['name'];
                        $email=$_POST['email'];
                        $phoneCt=$_POST['phoneCt'];
                        $message=$_POST['message'];
                        $CONTACT->InsertContact($name,$email,$phoneCt,$message,$date);
                        $recieverMail=$email;
                        $recieverName=$name;
                        $letterTitle="Email Thông Báo";
                        $lettercontent='
                        Chúng tôi đã lưu thông tin. Bạn vui lòng giữ liên lạc để bộ phận CSKH liên hệ hỗ trợ bạn sớm nhất. 
                        Xin cảm ơn !
                        ';
                        GuiMail($recieverMail,$recieverName,$letterTitle,$lettercontent);
                        header("location:index.php?page=product&&stt=success&&rs=contactsendsc");
                    }
                    break;
                
                default:
                    # code...
                    break;
            }
            break;
        case 'rebooked':
            $BILL = new Bill();
            $idHoaDon= $_GET['idBill'];
            $BILL->BookedAgain($idHoaDon);
            header("location:index.php?page=account&&option=bills");
            break;
        case 'account':
            $users= new Users();
            $BILL = new Bill();
            $userID='';
            $image1='';
            if(!isset($_SESSION['user'])){
                header("location:index.php?page=login");
            }else{
                $username=$_SESSION['user'];
                $userDetail = $users->searchUser($username);
                $email= '';
                foreach ($userDetail as $value) {
                    $userID=$value['idUser'];
                    $email= $value['email'];
                }
            }
            $act='';
            if(isset($_GET['idBill'])){
                $idBill = $_GET['idBill'];
                $PhiVanChuyen ='';
                $billStt ='';
                $rebooked='';
                $resultBills = $BILL->getallBillofUSer($userID);
                foreach ($resultBills as  $value) {
                    $PhiVanChuyen =$value['PhiVanChuyen'];
                    $billStt = $value['STT'];
                }
                $RSCHECKBILL = $BILL->checkRebooked($idBill);
                foreach ($RSCHECKBILL as $value) {
                    $rebooked=$value['checkRB'];
                }
                $resultBills = $BILL-> getHDCT($idBill);
            }else{
                $countBill = $BILL->counShippingHD();
                $resultBills = $BILL->getallBillofUSer($userID);
            }
            if(isset($_GET['act'])){
                $act = $_GET['act'];
            }
            if(isset($_GET['rs'])){
                switch ($_GET['rs']) {
                    case 'notsamepass':
                        $_SESSION['thongbao']="2 mật khẩu không giống nhau";
                        break;
                    
                    default:
                        # code...
                        break;
                }
            }
            switch ($act) {
                case 'editAccount':
                    if(isset($_POST['submitEdiTAccount'])){
                        $username= $_POST['username'];
                        $fullname= $_POST['fullname'];
                        $email= $_POST['email'];
                        $password= $_POST['password'];
                        $repass= $_POST['repass'];
                        $image= $_FILES['image']['name'];
                        $image_tmp= $_FILES['image']['tmp_name'];
                        if($image==''){
                            if($password!=$repass){
                                header("location:index.php?page=account&&stt=fail&&rs=notsamepass");
                                break;
                            }else{
                                $password= md5($password);
                                $users->UDUser1($username,$fullname,$password,$email,$userID,$date);
                                unset($_SESSION['user']);
                                header("location:index.php?page=login&&stt=success&&rs=successchange");
                            }
                        }else{
                            if($password!=$repass){
                                header("location:index.php?page=account&&stt=fail&&rs=notsamepass");
                                break;
                            }else{
                                foreach ($userDetail as $value) {
                                    $image1=$value['image'];
                                }
                                $password= md5($password);
                                unlink($imageUser.$image1);
                                move_uploaded_file($image_tmp,$imageUser.$image);
                                $users->UDUser2($username,$fullname,$password,$email,$userID,$date,$image);
                                unset($_SESSION['user']);
                                header("location:index.php?page=login&&stt=success&&rs=successchange");
                            }
                        }
                    }

                    break;
                case 'xacNhanDon':
                    $idHoaDon= $_POST['idHoaDon'];
                    $BILL-> UDSTTHD($idHoaDon);
                    header("location:index.php?page=account&&option=bills");
                    break;
                case 'rebook1':
                    $idHoaDon= $_POST['idHoaDon'];
                    $recieverMail=$email;
                    $recieverName='Nguyễn Lê Trung Thành';
                    $letterTitle="Email xác nhận đặt hàng";
                    $lettercontent='<a href="http://localhost/PHP2/ASM/index.php?page=rebooked&&idBill='.$idHoaDon.'">http://localhost/PHP2/ASM/index.php?page=rebooked&&idBill='.$idHoaDon.'</a>';
                    GuiMail($recieverMail,$recieverName,$letterTitle,$lettercontent);
                    break;
                default:
                    # code...
                    break;
            }
            if(isset($_GET['option'])){
                switch ($_GET['option']) {
                    case 'usermanager':
                        break;
                    
                    default:
                        # code...
                        break;
                }
            }
            switch ($act) {
                case 'logout':
                    unset($_SESSION['user']);
                    header("location:index.php?page=product&&stt=success&&rs=successLogout");
                    break;
                
                default:
                    # code...
                    break;
            }
            break;     
        case 'home':
            $latestProduct = $Product->getlatestProduct();
            $bestSaleProduct= $Product->getBestSaleProduct();
            break;
        case 'product':
            $option='';
            $idBrand='';
            $act = '';
            $rs='';
            if(isset($_GET['rs'])){
                $rs= $_GET['rs'];
            }
            switch ($rs) {
                case 'successLogout':
                    $_SESSION['thongbao']="Đăng xuất thành công";
                    break;
                case 'outRole':
                    $_SESSION['thongbao']="Từ chối truy cập";
                    break;
                case 'contactsendsc':
                    $_SESSION['thongbao']="Bạn vui lòng check mail";
                    break;
                default:
                    # code...
                    break;
            }
            if(isset($_GET['act'])){
                $act = $_GET['act'];
                switch ($act) {
                    case 'searchProduct':
                        $prodName=$_GET['productName'];
                        $result1 = $Product->getSearchProduct($prodName);
                        $TotalProd = count($result1);
                        $limit =6;
                        $totalPage = ceil($TotalProd/$limit);
                        if(isset($_GET['numPage'])){
                            $currentPage =$_GET['numPage'];
                        }else{
                            $currentPage=1;
                        }
                        $offset = ($currentPage-1)*$limit;
                        $allProducts = $Product->getSearchProductPT($prodName,$limit, $offset);
                        break;
                    case 'checkOut':
                        $users= new Users();
                        $tenNguoiNhan= $_POST['tenNguoiNhan'];
                        $address= $_POST['address'];
                        $sdtNguoiNhan= $_POST['sdtNguoiNhan'];
                        $note= $_POST['note'];
                        $username= $_POST['sessionUser'];
                        $total = 0;
                        foreach ($_SESSION['cart'] as $value) {
                            $total +=($value[7]*$value[1]);
                        }
                        $userID='';
                        $result =$users->searchUser($username);
                        foreach ($result as $value) {
                            $userID=$value['idUser'];
                        }
                        $idCity= $_POST['idCity'];
                        $cityInfo = $TINH->getInfoTinh($idCity);
                        $tenMien = '';
                        $idTinh= '';
                        $idKho='';
                        foreach ($cityInfo as $value) {
                            $tenMien=$value['tenMien'];
                            $idTinh= $value['idTinh'];
                        }
                        if($tenMien=='Bắc'){
                            $tenKho="Kho Hàng Miền Bắc";
                        }else if($tenMien=='Trung'){
                            $tenKho="Kho Hàng Miền Trung";
                        }else{
                            $tenKho = "Kho Hàng Miền Nam";
                        }
                        $STORAGE = new storage();
                        $KhoInfo = $STORAGE-> getStorageInfoByName($tenKho);
                        foreach ($KhoInfo as $value) {
                            $idKho=$value['idKho'];
                        }
                        $result2 = $TINH->getPVC($idTinh);
                        $PVC = '';
                        foreach ($result2 as  $value) {
                            $PVC=$value['phiVanChuyen'];
                        }
                        $BILL = new Bill();
                        $idBill = $BILL ->addBill($conn,$date,$userID,$total,$PVC,$idCity,$idKho,$note,$tenNguoiNhan,$sdtNguoiNhan,$address);
                        foreach ($_SESSION['cart'] as $value) {
                            $idCTSP=$value[0];
                            $price=$value[7];
                            $soLuong=$value[1];
                            $BILL ->addBillDetail($idBill,$idCTSP,$price,$soLuong);
                        }
                        unset($_SESSION['cart']);
                        break;
                    case 'DeleteItem':
                        $idCTSP3 = $_POST['idCT'];
                        for ($i=0; $i <sizeof($_SESSION['cart']) ; $i++) { 
                            if($_SESSION['cart'][$i][0]==$idCTSP3){
                                unset($_SESSION['cart'][$i]);
                                break;
                            }
                        }
                        break;
                    case 'UDUPCart':
                        $idCTSP1 = $_POST['idCT'];
                        for ($i=0; $i <sizeof($_SESSION['cart']) ; $i++) { 
                            if($_SESSION['cart'][$i][0]==$idCTSP1){
                                $_SESSION['cart'][$i][1] = $_SESSION['cart'][$i][1]+1;
                                break;
                            }
                        }
                        break;
                    case 'UDGiamCart':
                        $idCTSP2 = $_POST['idCT'];
                        for ($i=0; $i <sizeof($_SESSION['cart']) ; $i++) { 
                            if($_SESSION['cart'][$i][0]==$idCTSP2){
                                $_SESSION['cart'][$i][1] = $_SESSION['cart'][$i][1]-1;
                                break;
                            }
                        }
                        break;
                    case 'addToCart':
                        $idCTSP = $_POST['idCt'];
                        $allCTSP = $Product->getAllSingleProduct($idCTSP);
                        $maMau = '';
                        $tenMau='';
                        $tenSP ='';
                        $image='';
                        $dungluong='';
                        $price='';
                        foreach ($allCTSP as  $value) {
                            $maMau=$value['maMau'];
                            $tenMau=$value['tenMau'];
                            $tenSP=$value['tenSP'];
                            $image=$value['image'];
                            $dungluong=$value['dungluong'];
                            $price=$value['price'];
                        }
                        $c=0;
                        $soLuongmacdinh =1;
                        $item=[$idCTSP,$soLuongmacdinh,$maMau,$tenMau,$tenSP,$image,$dungluong,$price];
                        if(!isset($_SESSION['cart'])){
                            $_SESSION['cart'][]= $item;
                        }else{
                            for ($i=0; $i <sizeof($_SESSION['cart']) ; $i++) { 
                                if($_SESSION['cart'][$i][0]==$idCTSP){
                                    $soLuongMoi = $_SESSION['cart'][$i][1]+1;
                                    $_SESSION['cart'][$i][1]=$soLuongMoi;
                                    $c=1;
                                    break;
                                }
                            }
                            if($c==0){
                                $_SESSION['cart'][]= $item;
                            }

                        }
                        break;
                    
                    default:
                        # code...
                        break;
                }
            }
            if(isset($_GET['idProd'])&&isset($_GET['option'])&&$_GET['option']=='prodDetail'){
                if(!$_GET['idProd']){
                    header("location:index.php?page=product");
                }else{
                    $idProd= $_GET['idProd'];
                    $ProductDetail = $Product->getProductDetail($idProd);
                    $tatus='';
                    foreach ($ProductDetail as  $value) {
                        $status = $value['stt'];
                    }
                    if(count($ProductDetail)==0){
                        header("location:index.php?page=product");
                    }else{
                        $oldSeen='';
                        foreach ($ProductDetail as  $value) {
                            $oldSeen=$value['soLuotXem'];
                        }
                        $newseen= $oldSeen+1;
                        $Product->UDSEEN($idProd,$newseen);
                        $ProdGallery = $Product->getGallerySingProd($idProd);
                        $Options = $Product->getAllOptionSingleProduct($idProd);
                        if(isset($_GET['idCt'])){
                        $idChitiet=$_GET['idCt'];
                        $result = $Product->getDetail($idChitiet);
                        $detailPrice='';
                        $quantity= '';
                        foreach ( $result as $value) {
                            $detailPrice=$value['price'];
                            $quantity = $value['quantity'];
                        }
                    }
                    $idBrand = '';
                    $idThietBi ='';
                    foreach ($ProductDetail as  $value) {
                        $idBrand= $value['idBrand'];
                        $idThietBi=$value['idThietBi'];
                    }
                    $orderProducts = $Product->getSimilarProduct($idBrand,$idThietBi,$idProd);
                    }
                    
                }
                
            }else if(isset($_GET['idBrand'])){
                $idBrand=$_GET['idBrand'];
                $allProducts1 = $Product->getProductsOneBrand($idBrand);
                $totalProd = count($allProducts1);
                $limit=6;
                $totalPage = ceil($totalProd/$limit);
                $currentPage ='';
                if(isset($_GET['numPage'])){
                    $currentPage =$_GET['numPage'];
                }else{
                    $currentPage=1;
                }
                $offset = ($currentPage-1)*$limit;
                $allProducts = $Product->getProductsOneBrandPT($conn,$idBrand,$limit,$offset);
            }else if(isset($_GET['idThietBi'])){
                $idThietBi = $_GET['idThietBi'];
                $allProducts1 = $Product->getProductsOneTB($idThietBi);
                $totalProd = count($allProducts1);
                $limit=6;
                $totalPage = ceil($totalProd/$limit);
                $currentPage ='';
                if(isset($_GET['numPage'])){
                    $currentPage =$_GET['numPage'];
                }else{
                    $currentPage=1;
                }
                $offset = ($currentPage-1)*$limit;
                $allProducts = $Product->getProductsOneTBPT($conn,$idThietBi,$limit,$offset);
            }else if(!isset($_GET['idProd'])&&!isset($_GET['idThietBi'])&&!isset($_GET['idBrand'])&&!isset($_GET['act'])){
                $allProducts1 = $Product->getAllProduct();
                $totalProd = count($allProducts1);
                $limit=6;
                $totalPage = ceil($totalProd/$limit);
                $currentPage ='';
                if(isset($_GET['numPage'])){
                    $currentPage =$_GET['numPage'];
                }else{
                    $currentPage=1;
                }
                $offset = ($currentPage-1)*$limit;
                $allProducts = $Product->getAllProductPT($conn,$offset,$limit);
            }
            break;
        case 'cart':
            $PVC='';
            if(count($_SESSION['cart'])==0){
                header("location:index.php?page=product");
            }
            $act = '';
            if(isset($_GET['act'])){
                $act = $_GET['act'];
            }
            switch ($act) {
                case 'checkPVC':
                    $idTinh = $_GET['idCity'];
                    $result = $TINH->searchPVC($idTinh);
                    foreach ($result as $value) {
                        $PVC=$value['phiVanChuyen'];
                    }
                    break;
                
                default:
                    # code...
                    break;
            }
            break;
        case 'login':
            $act='';$rs='';
            if(isset($_SESSION['user'])){
                header("Location:index.php?page=account");
            }
            if(isset($_GET['act'])){
                $act=$_GET['act'];
            }
            if(isset($_GET['rs'])){
                $rs = $_GET['rs'];
            }
            switch ($rs) {
                case 'exist':
                    $_SESSION['thongbao']="Tài khoản đã được đăng ký";
                    break;
                case 'registerSuccess':
                    $_SESSION['thongbao']="Mời bạn check mail để lấy mật khẩu";
                    break;
                case 'wrongpass':
                    $_SESSION['thongbao']="Sai mật khẩu !";
                    break;
                case 'successlogin':
                    $_SESSION['thongbao']="Đăng nhập thành công !";
                    break;
                case 'successchange':
                    $_SESSION['thongbao']="Thay đổi thành công !";
                    break;
                case 'blocked':
                    $_SESSION['thongbao']="Tài khoản bạn đang bị khóa !";
                    break;
                case 'loginrequired':
                    $_SESSION['thongbao']="Yêu cầu đăng nhập !";
                    break;
                case 'notexistForget':
                    $_SESSION['thongbao']="Username và Email không trùng khớp";
                    break;
                case 'SCRecall':
                    $_SESSION['thongbao']="Mời bạn kiểm tra email !";
                    break;
                default:
                    # code...
                    break;
            }
            $users= new Users();
            switch ($act) {
                case 'login':
                    $image='';

                    if(isset($_POST['loginBtn'])){
                        $username = $_POST['username'];
                        $password = $_POST['password'];
                        if(isset($_POST['remember'])){
                            setcookie('user',$username,time()+7200);
                            setcookie('password',$_POST['password'],time()+7200);
                        }else{
                            setcookie('user','',time()-300);
                            setcookie('password','',time()-300);
                        }
                        $password = md5($password);
                        $checkLogin= $users->checkLogin($username,$password);
                        if($checkLogin==0){
                            $result = $users->searchUser($username);
                            foreach ($result as  $value) {
                                $image=$value['image'];
                            }
                            // header("location:index.php?page=login&&option=login&&stt=fail&&rs=wrongpass");
                        }else{
                            $status='';
                            $result = $users->searchUser($username);
                            foreach ($result as  $value) {
                                $status = $value['status'];
                            }
                            if($status==0){
                                header("location:index.php?page=login&&stt=fail&&rs=blocked");
                            }else{
                                $_SESSION['user']=$username;
                                header("location:index.php?page=product&&stt=success&&rs=successlogin");    
                            }
                        }
                    }
                    break;
                case 'register':
                    if(isset($_POST['registerBtn'])){
                        $fullName= $_POST['fullname'];
                        $username= $_POST['username'];
                        $username=trim($username);
                        $email= $_POST['email'];
                        $image = $_FILES['image']['name'];
                        $image_tmp=$_FILES['image']['tmp_name'];
                        $check = $users->checkhUser($username);
                        if($check!=0){
                            header("location:index.php?page=login&&option=login&&stt=fail&&rs=exist");
                        }else{
                            move_uploaded_file($image_tmp,$imageUser.$image);
                            $string="0123456789abcdefghijklmnopqrstuvwxyz";
                            $password= substr(str_shuffle($string), 0, 10);
                            $password2=md5($password);
                            $passReset = rand(10000,99999);
                            $passReset = base64_encode($passReset);
                            $status=1;
                            $RoleID='';
                            $resultRole= $users->getRoleID();
                            foreach ($resultRole as $value) {
                                $RoleID = $value['idRole'];
                            }
                            $users->addUser($username,$fullName,$password2,$passReset,$email,$image,$status,$RoleID,$date);
                            $recieverMail=$email;
                            $recieverName=$fullName;
                            $letterTitle="Email xác nhận đăng nhập";
                            $lettercontent="Mật khẩu của bạn là ".$password." .Mời bạn đổi mật khẩu trong lần đầu đăng nhập";
                            GuiMail($recieverMail,$recieverName,$letterTitle,$lettercontent);
                            header("location:index.php?page=login&&option=login&&stt=success&&rs=registerSuccess");
                        }
                        
                    }
                    break;
                case 'forget':
                    $username= $_GET['username'];
                    $email= $_GET['email'];
                    $checkForget = '';
                    $resultUserInfoForget= $users->searchUserEmail($username,$email);
                    $checkForget= count($resultUserInfoForget);
                    if($checkForget==0){
                        header("location:index.php?page=login&&option=forget&&stt=fail&&rs=notexistForget");
                    }else{
                        $fullname = '';
                        foreach ($resultUserInfoForget as $value) {
                            $fullname = $value['fullname'];
                        }
                        $recieverMail=$email;
                        $string="0123456789abcdefghijklmnopqrstuvwxyz";
                        $password= substr(str_shuffle($string), 0, 10);
                        $password2=md5($password);
                        $users->UDPASSFG($password2,$username);
                        $recieverName=$fullname;
                        $letterTitle="Email khởi tạo mật khẩu";
                        $lettercontent='Mật khẩu mới của bạn là : '.$password.'. Bạn vui lòng đổi mật khẩu trong lần đăng nhập tiếp theo. ';
                        GuiMail($recieverMail,$recieverName,$letterTitle,$lettercontent);
                        header("Location:index.php?page=login&&stt=success&&rs=SCRecall");
                    }
                    break;
                default:
                    # code...
                    break;
            }
            break;
            
        default:
            # code...
            break;
    }
    include 'users/view/index.php';
    unset($_SESSION['thongbao']); 
?>