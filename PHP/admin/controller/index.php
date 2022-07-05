<?php
    include 'model/index.php';
    // $conn = mysqli_connect('localhost','root','','asmphp2');
    include '../global.php';
    if(!isset($_SESSION['user'])){
        header("location:../index.php?page=login&&stt=fail&&rs=loginrequired");
    }else{
        $USERS = new USER();
        $username=$_SESSION['user'];
        $result = $USERS->searchUser($username);
        $idRole = '';
        foreach ($result as $value) {
            $idRole=$value['tenRole'];
        }
        if($idRole=="Khách hàng"){
            header("location:../index.php?page=product&&stt=fail&&rs=outRole");
        }
    }
    $page='';
    if(isset($_GET['page'])){
       $page = $_GET['page'];
    }else{
        $page= 'home';
    }
    switch ($page) {
        case 'support':
            $SUPPORT = new SUPPORT();
            $allSupport = $SUPPORT->all();
            $act = '';
            if(isset($_GET['act'])){
                $act = $_GET['act'];
            }
            switch ($act) {
                case 'all':
                    $allSupport = $SUPPORT->all();
                    break;
                case 'UDCT':
                    $idPhieu= $_POST['idPhieu'];
                    $note= $_POST['note'];
                    $status=1;
                    $SUPPORT->UDCT($status,$note,$date,$idPhieu);
                    break;
                case 'delete':
                    $idPhieu= $_POST['idPhieu'];
                    $SUPPORT->delete($idPhieu);
                    break;
                default:
                    # code...
                    break;
            }
            break;
        case 'nightbot':
            $HINT = new HINT();
            $act = '';
            $allHint = $HINT->all();
            if(isset($_GET['act'])){
                $act = $_GET['act'];
            }
            switch ($act) {
                case 'deleteHint':
                    $idHint=$_POST['idHint'];
                    $HINT->delete($idHint);
                    break;
                case 'editHint':
                    $idHint=$_POST['idHint'];
                    $newHint = $_POST['newHint'];
                    $newanswer = $_POST['newanswer'];
                    $HINT->edit($idHint,$newHint,$newanswer);
                    break;
                case 'addNewHint':
                    $newHint=$_POST['newHint'];
                    $answer = $_POST['HintAnswer'];
                    $HINT->add( $newHint,$answer);
                default:
                    # code...
                    break;
            }
            break;
        case 'shipHang':
            $TRANSPORT = new Transport();
            $BILL = new BILL();
            $StorageObj = new Storage();
            $ProductObj = new Products();
            $act = '';
            if(isset($_GET['act'])){
                $act = $_GET['act'];
            }
            switch ($act) {
                case 'YCLH':
                    $idHD = $_POST['idHD'];
                    $check = $TRANSPORT->checkidHD($idHD);
                    if($check==0){
                        $idBill = $_POST['idHD'];
                        $permitted_chars = '0123456789';
                        $random = substr(str_shuffle($permitted_chars), 0,7);
                        $MVD = 'MVD'.$random;
                        $idBill=$_POST['idHD'];
                        $soLuongSP ='';
                        $soLuongSP =$BILL->CountSP($idHD);
                        if($check!=0){
                            $random= mt_srand(5);
                            $MVD = 'MVD'.$random;
                        }
                        $status=1;  
                        $tongGiaTri='';
                        $result = $BILL->getsingle($idBill);
                        foreach ($result as  $value) {
                            $tongGiaTri=$value['Total']+$value['PhiVanChuyen'];
                        }
                        $BILL->UDBILL($MVD,$status,$idHD);
                        $TRANSPORT->addVanChuyen($MVD,$idHD,$soLuongSP,$tongGiaTri,$status);
                    }else{
                        $resultHDDT = $TRANSPORT->getIdHD($idHD);
                        $MVD='';
                        foreach ($resultHDDT as $key => $value) {
                            $MVD= $value['maVanDon'];
                        }
                        $TRANSPORT->UDREBOOKED($MVD);
                        $status=1;  
                        $BILL->UDBILL($MVD,$status,$idHD);
                    }
                    break;
                case 'LayHang':
                    $maVanDon= $_POST['maVanDon'];
                    $status=2;
                    $TRANSPORT->UDVC($maVanDon,$status);
                    $BILL->UDSTTBILL($maVanDon,$status);
                    break;
                case 'shipHang':
                    $maVanDon= $_POST['maVanDon'];
                    $kq = $_POST['kq'];
                    $note = $_POST['note'];
                    if($kq==0){
                        $status=4;
                    }else{
                        $status=3;
                    }
                    if($kq==1){
                        $BILL->UDSTTBILL2($maVanDon,$status,$note,$date);
                        $TRANSPORT->UDVC2($maVanDon,$status,$note);
                        $result =$BILL-> getHDFromMVD($maVanDon);
                        $idKho ='';
                        $idBill= '';
                        foreach ($result as $value) {
                            $idBill = $value['idHoaDon'];
                            $idKho = $value['idKho'];
                        }
                        $result1= $BILL-> getHDCT($idBill);
                        $soLuongCu='';
                        $soLuongMoi='';
                        $soLuongMua='';
                        foreach ($result1 as  $value) {
                            $idChitietSP =$value['idCTHH'];
                            $Price = $value['Price'];
                            $soLuongMua=$value['soLuong'];
                            $resultCTSP = $ProductObj->getCTSP2($idChitietSP);
                            $idProd = '';
                            foreach ($resultCTSP as $value) {
                                $idProd =$value['idProd'];
                            }
                            $total = $soLuongMua*$Price;
                            $oldSale = '';
                            $resultSingleProd= $ProductObj->getSingleProduct($idProd);
                            foreach ($resultSingleProd as  $value) {
                                $oldSale = $value['sale'];
                            }
                            $newSale= $oldSale+$total;
                            $ProductObj->UDSale($idProd,$newSale);
                            $result2=$StorageObj->selectTonCu($idChitietSP,$idKho);
                            foreach ($result2 as  $value) {
                            $soLuongCu=$value['soLuongTonKho'];
                            }
                            $soLuongMoi= $soLuongCu-$soLuongMua;
                            $StorageObj->UDTonMua($idChitietSP,$soLuongMoi,$idKho);
                        }
                        

                    }else{
                        $BILL->UDSTTBILL3($maVanDon,$status,$note,$date);
                        $TRANSPORT->UDVC2($maVanDon,$status,$note);
                    }
                    
                    break;
                case 'NHH':
                    $idHD = $_POST['idHD'];
                    $status = 5;
                    $BILL->UDHH($idHD,$status);
                    $TRANSPORT->UDHH($status,$idHD);
                    break;
                case 'cancel':
                    $idHD= $_POST['idHD'];
                    $status=5;
                    $BILL->UDHH($idHD,$status);
                    break;
                default:
                    # code...
                    break;
            }
            break;
        case 'dieuhang':
            $StorageObj = new Storage();
            $act = '';
            if(isset($_GET['act'])){
                $act = $_GET['act'];
            }
            switch ($act) {
                case 'deletePhieu':
                    $idPhieu = $_POST['idPhieu'];
                    $StorageObj->deleteDH($idPhieu);
                    break;
                case 'UDPhieu2':
                    $idPhieu= $_POST['idPhieu'];
                    // $StorageObj->UDNhanHang($idPhieu,$idKho2,$status,$note,$date);
                    $idKho1='';
                    $idKho2='';
                    $idCTSP='';
                    $soLuongTonKhoGuiBF='';
                    $soLuongDieu='';
                    $result = $StorageObj->searchPDH($idPhieu);
                    $status=2;
                    foreach ($result as  $value) {
                        $idKho1=$value['idDauKho1'];
                        $idKho2=$value['idDauKho2'];
                        $idCTSP=$value['idCTSP'];
                        $soLuongDieu=$value['soLuong'];
                    }
                    $result1 = $StorageObj->SELECTKHONHAN($idCTSP,$idKho1);
                    foreach ($result1 as  $value) {
                        $soLuongTonKhoGuiBF=$value['tonkhobandau'];
                    }
                    $soLuongTonKhoGuiAT=$soLuongTonKhoGuiBF+$soLuongDieu;
                    $StorageObj->UDKhoNhan($idCTSP,$idKho1,$soLuongTonKhoGuiAT);
                    $note= "Đã nhận hàng";
                    $StorageObj->UDNhanHang($idPhieu,$status,$note,$date);
                    break;
                case 'UPPhieu':
                    $idPhieu= $_POST['idPhieu'];
                    $idKho2 = $_POST['idKho2'];
                    $status=1;
                    $option=$_GET['option'];
                    $thongTin= '';
                    $result = $StorageObj->searchCTDH($idPhieu);
                    $idKho1 ='';
                    $idCTSP = '';
                    $soLuongDieu='';
                    $soLuongTonKhoGuiBF=''; //Before
                    foreach ($result as $value) {
                        $idKho1= $value['idDauKho1'];
                        $idCTSP =$value['idCTSP'];
                        $soLuongDieu=$value['soLuong'];
                    }
                    $result1 = $StorageObj->selectKhoGui($idCTSP,$idKho2);
                    foreach ($result1 as $key => $value) {
                        $soLuongTonKhoGuiBF=$value['tonkhobandau'];
                    }
                    $soLuongTonKhoGuiAT=$soLuongTonKhoGuiBF-$soLuongDieu;//After

                    switch ($option) {
                        case 'area1':
                            $thongTin= "Kho Hàng Miền Bắc";
                            break;
                        case 'area2':
                            $thongTin= "Kho Hàng Miền Trung";
                            break;
                        case 'area3':
                            $thongTin= "Kho Hàng Miền Nam";
                            break;
                        default:
                            # code...
                            break;
                    }
                    $note = $thongTin." Đã gửi hàng ";
                    $StorageObj->UDKhoGui($soLuongTonKhoGuiAT,$idKho2,$idCTSP);
                    $StorageObj-> UDDieuHang($idPhieu,$idKho2,$status,$note,$date);
                    break;
                case 'sendPhieu':
                $idCTSP = $_POST['idCTSP'];
                $quantity = $_POST['quantity'];
                $idKho1 = $_POST['idKho1'];
                $thongtinkho='';
                $result = $StorageObj->getStoreInfo($idKho1);
                foreach ($result as  $value) {
                    $thongtinkho=$value['thongTin'];
                }
                $note = "Yêu cầu điều hàng hộ từ ".$thongtinkho;
                $StorageObj->addDieuHang($idCTSP,$quantity,$idKho1,$note);

                break;
                case 'dieuhangdi':
                    $option = '';
                    if(isset($_GET['option'])){
                        $option = $_GET['option'];
                    }else{
                        header("location:index.php?page=dieuhang&&act=allPhieu");
                    }
                    switch ($option) {
                        case 'area1':
                            $thongTin= "Kho Hàng Miền Bắc";
                            $allPhieu=$StorageObj-> getAllDieuHangDi($thongTin);
                            break;
                        case 'area2':
                            $thongTin= "Kho Hàng Miền Trung";
                            $allPhieu=$StorageObj-> getAllDieuHangDi($thongTin);
                            break;
                        case 'area3':
                            $thongTin= "Kho Hàng Miền Nam";
                            $allPhieu=$StorageObj-> getAllDieuHangDi($thongTin);
                            break;
                        default:
                            # code...
                            break;
                    }
                    break;
                case 'dieuhangden':
                    $option = '';
                    if(isset($_GET['option'])){
                        $option = $_GET['option'];
                    }else{
                        header("location:index.php?page=dieuhang&&act=allPhieu");
                    }
                    switch ($option) {
                        case 'area1':
                            $thongTin= "Kho Hàng Miền Bắc";
                            $allPhieu=$StorageObj-> getAllDieuHangDen($thongTin);
                            $result2 =$StorageObj-> searchStorage($thongTin);
                            $idKho = '';
                            foreach ($result2 as $value) {
                                $idKho =$value['idKho'];
                            }
                            break;
                        case 'area2':
                            $thongTin= "Kho Hàng Miền Trung";
                            $allPhieu=$StorageObj-> getAllDieuHangDen($thongTin);
                            $result2 =$StorageObj-> searchStorage($thongTin);
                            $idKho = '';
                            foreach ($result2 as $value) {
                                $idKho =$value['idKho'];
                            }
                            break;
                        case 'area3':
                            $thongTin= "Kho Hàng Miền Nam";
                            $allPhieu=$StorageObj-> getAllDieuHangDen($thongTin);
                            $result2 =$StorageObj-> searchStorage($thongTin);
                            $idKho = '';
                            foreach ($result2 as $value) {
                                $idKho =$value['idKho'];
                            }
                            break;
                        default:
                            # code...
                            break;
                    }
                    break;
                case 'allPhieu':
                    $allPhieu=$StorageObj->getAllDieuHang();
                    break;
                default:
                    # code...
                    break;
            }
            
            break;
        case 'bills':
            $BILL = new BILL();
            $StorageObj = new Storage();
            $allStorage = $StorageObj->all();
            $act = '';
            $option='';
            $tenMien='';
            if(isset($_GET['act'])){
                $act= $_GET['act'];
            }else{
                $allBills= $BILL->all();
            }
            if(isset($_GET['option'])){
                $option= $_GET['option'];
            }else {
                $allBills= $BILL->all();
            }
            switch ($option) {
                case 'area1':
                    $thongTin= "Kho Hàng Miền Bắc";
                    switch ($act) {
                        case 'all':
                            $allBills= $BILL->getBillsFromArea($thongTin);
                            break;
                        case 'booked':
                            $status=0;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'pickedUp':
                            $status=2;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'success':
                            $status=6;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'return':
                            $status=4;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'billdetail':
                            $idBill = $_GET['idBill'];
                            $result = $BILL->getsingle($idBill);
                            $idKho ='';
                            $idChitiet='';
                            $tonKhoSP='';
                            $count='';
                            $result4 = $BILL->getOneBillInfo($idBill);
                            foreach ($result as  $value) {
                                $idKho=$value['idKho'];
                                $idChitiet=$value['idCTHH'];
                                $count=$value['countDL'];
                            } 
                            $result2=$StorageObj->TotalSingleProduct($idChitiet);
                            foreach ($result2 as $value) {
                                $tonKhoSP=$value['TongTon'];
                            }
                            $result3=$BILL->getHDCT($idBill);
                            break;
                        default:
                            # code...
                            break;
                    }
                    break;
                case 'area2':
                    $thongTin= "Kho Hàng Miền Trung";
                    switch ($act) {
                        case 'all':
                            $allBills= $BILL->getBillsFromArea($thongTin);
                            break;
                        case 'booked':
                            $status=0;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'pickedUp':
                            $status=2;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'success':
                            $status=6;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'return':
                            $status=4;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'billdetail':
                            $idBill = $_GET['idBill'];
                            $result = $BILL->getsingle($idBill);
                            $idKho ='';
                            $idChitiet='';
                            $tonKhoSP='';
                            $count='';
                            $result4 = $BILL->getOneBillInfo($idBill);
                            foreach ($result as  $value) {
                                $idKho=$value['idKho'];
                                $idChitiet=$value['idCTHH'];
                                $count=$value['countDL'];
                            } 
                            $result2=$StorageObj->TotalSingleProduct($idChitiet);
                            foreach ($result2 as $value) {
                                $tonKhoSP=$value['TongTon'];
                            }
                            $result3=$BILL->getHDCT($idBill);
                            break;
                        default:
                            # code...
                            break;
                    }
                    break;
                case 'area3':
                    $thongTin= "Kho Hàng Miền Nam";
                    switch ($act) {
                        case 'all':
                            $allBills= $BILL->getBillsFromArea($thongTin);
                            break;
                        case 'booked':
                            $status=0;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'pickedUp':
                            $status=2;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'success':
                            $status=6;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'return':
                            $status=4;
                            $allBills= $BILL->getBillsFromArea2($thongTin,$status);
                            break;
                        case 'billdetail':
                            $idBill = $_GET['idBill'];
                            $result = $BILL->getsingle($idBill);
                            $idKho ='';
                            $idChitiet='';
                            $tonKhoSP='';
                            $count='';
                            $result4 = $BILL->getOneBillInfo($idBill);
                            foreach ($result as  $value) {
                                $idKho=$value['idKho'];
                                $idChitiet=$value['idCTHH'];
                                $count=$value['countDL'];
                            } 
                            $result2=$StorageObj->TotalSingleProduct($idChitiet);
                            foreach ($result2 as $value) {
                                $tonKhoSP=$value['TongTon'];
                            }
                            $result3=$BILL->getHDCT($idBill);
                            break;
                        default:
                            # code...
                            break;
                    }
                    break;
                case 'all':
                    switch ($act) {
                        case 'all':
                            $allBills= $BILL->all();
                        break;
                        case 'booked':
                            $status=0;
                            $allBills= $BILL->allTheoStatus($status);
                            break;
                        case 'pickedUp':
                            $status=2;
                            $allBills= $BILL->allTheoStatus($status);
                            break;
                        case 'success':
                            $status=6;
                            $allBills= $BILL->allTheoStatus($status);
                            break;
                        case 'return':
                            $status=4;
                            $allBills= $BILL->allTheoStatus($status);
                            break;
                        case 'billdetail':
                            $idBill = $_GET['idBill'];
                            $result = $BILL->getsingle($idBill);
                            $idKho ='';
                            $idChitiet='';
                            $tonKhoSP='';
                            $count='';
                            $result4 = $BILL->getOneBillInfo($idBill);
                            foreach ($result as  $value) {
                                $idKho=$value['idKho'];
                                $idChitiet=$value['idCTHH'];
                                $count=$value['countDL'];
                            } 
                            $result2=$StorageObj->TotalSingleProduct($idChitiet);
                            foreach ($result2 as $value) {
                                $tonKhoSP=$value['TongTon'];
                            }
                            $result3=$BILL->getHDCT($idBill);
                            break;
                        default:
                        # code...
                        break;
                    }
                    break;           
                default:
                    switch ($act) {
                        case 'all':
                            $allBills= $BILL->all();
                        break;
                        case 'billdetail':
                            $idBill = $_GET['idBill'];
                            $result = $BILL->getsingle($idBill);
                            $idKho ='';
                            $idChitiet='';
                            $tonKhoSP='';
                            $count='';
                            $result4 = $BILL->getOneBillInfo($idBill);
                            foreach ($result as  $value) {
                                $idKho=$value['idKho'];
                                $idChitiet=$value['idCTHH'];
                                $count=$value['countDL'];
                            } 
                            $result2=$StorageObj->TotalSingleProduct($idChitiet);
                            foreach ($result2 as $value) {
                                $tonKhoSP=$value['TongTon'];
                            }
                            $result3=$BILL->getHDCT($idBill);
                            break;
                        case 'dieuhang':
                            break;
                        default:
                        # code...
                        break;
                    }
                    break;
            }
            break;
        case 'users':
            $USERS = new USER();
            $allRole = $USERS->all();
            $allUsers = $USERS-> allUsers();
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'UDRoleUser':
                        $idRole = $_POST['idRole'];
                        $idUser = $_POST['idUser'];
                        $note = $_POST['note'];
                        $USERS->UDUSerRole($idRole,$note,$date,$idUser);
                        break;
                    case 'addRole':
                        $RoleName= $_POST['RoleName'];
                        $check = $USERS->checkRole($RoleName);
                        if($check==0){
                            $USERS->addRole($RoleName);
                        }
                        break;
                    case 'editRole':
                        $newRole = $_POST['newRole'];
                        $idRole = $_POST['idRole'];
                        $USERS->edit($idRole,$newRole);
                        break;
                    case 'deleteRole':
                        $idRole = $_POST['idRole'];
                        $USERS->delete($idRole);
                        break;
                    case 'createUser':
                        $username=$_POST['username'];
                        $fullName=$_POST['fullName'];
                        $email=$_POST['email'];
                        $idRole=$_POST['idRole'];
                        $note=$_POST['note'];
                        $string="0123456789abcdefghijklmnopqrstuvwxyz";
                        $password= substr(str_shuffle($string), 0, 10);
                        $password2=md5($password);
                        $passReset = rand(10000,99999);
                        $passReset = base64_encode($passReset);
                        $status=1;
                        $USERS->addUser($username,$fullName,$password2,$passReset,$email,$status,$idRole,$note,$date);
                        $recieverMail=$email;
                        $recieverName=$fullName;
                        $letterTitle="Email xác nhận đăng nhập";
                        $lettercontent="Mật khẩu của bạn là ".$password." .Mời bạn đổi mật khẩu trong lần đầu đăng nhập";
                        GuiMail($recieverMail,$recieverName,$letterTitle,$lettercontent);
                        break;
                    case 'UDUser':
                        $status= $_POST['stt'];
                        $idUser = $_POST['idUser'];
                        $note = $_POST['note'];
                        $USERS->UDUSer($status,$idUser,$note,$date);
                        break;
                }
            }
            break;
        case 'transport':
            $MIEN = new Mien();
            $TINH = new Tinh();
            $BILL = new BILL();
            $allMien = $MIEN->all();
            $allTinh = $TINH->all();
            $TRANSPORT = new Transport();
            $allMienBac = $TRANSPORT->getAllPVCMienBac();
            $allMienTrung = $TRANSPORT->getAllPVCMienTrung();
            $allMienNam = $TRANSPORT->getAllPVCMienNam();
            $allTransportBills = $TRANSPORT->getAllTransportBills();
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'addPVCOT':
                        $PVC = $_POST['PVC'];
                        $OtherTinh = $TINH->getOTherTinh();
                        foreach ($OtherTinh as $value) {
                            $maTinh = $value['idTinh'];
                            $TRANSPORT->UPPVC($maTinh,$PVC);
                        }
                        break;
                    case 'addPVC':
                        $maTinh = $_POST['maTinh'];
                        $PVC = $_POST['PVC'];
                        $TRANSPORT->UPPVC($maTinh,$PVC);
                        break;
                    case 'addMien':
                        $tenMien = $_POST['tenMien'];
                        $check = $MIEN->checkMien($tenMien);
                        if($check==0){
                            $MIEN->addMien($tenMien);
                        }
                        break;
                    case 'addTinh':
                        $idMien = $_POST['idMien'];
                        $tenTinh = $_POST['tenTinh'];
                        $check = $TINH->checkTinh($tenTinh);
                        if($check==0){
                            $TINH->add($conn,$idMien,$tenTinh);
                        }
                        break;
                    case 'deleteMien':
                        $idMien = $_POST['idMien'];
                        $MIEN->delete($idMien);
                        break;
                    case 'editTenMien':
                        $idMien = $_POST['idMien'];
                        $newMien = $_POST['newMien'];
                        $MIEN->edit($idMien,$newMien);
                        break;
                    case 'deleteTinh':
                        $idTinh = $_POST['idTinh'];
                        $TINH->delete($idTinh);
                        break;
                    case 'editTinh':
                        $idTinh = $_POST['idTinh'];
                        $newTinh = $_POST['newTinh'];
                        $TINH->edit($idTinh,$newTinh);
                        break;
                }
            }
        case 'tb':
            $ThietBiObj= new ThietBi();
            $allThietBi= $ThietBiObj->all();
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'add':
                        $tenTB = $_POST['tenTB'];
                        $check = $ThietBiObj->check($tenTB);
                        if($check==0){
                            $ThietBiObj->add($tenTB);
                        }
                        break;
                    
                    case 'delete':
                        $idThietBi = $_POST['idThietBi'];
                        $ThietBiObj->delete($idThietBi);
                        break;
                    case 'edit':
                        $newTB= $_POST['newTB'];
                        $idThietBi = $_POST['idThietBi'];
                        $ThietBiObj->edit($newTB,$idThietBi);
                        break;
                }
            }
            break;
        case 'brand':
            $BrandObj = new Brand();
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'addBrand':
                        $BrandName= $_POST['BrandName'];
                        $check = $BrandObj->check($BrandName);
                        if($check==0){
                            $BrandObj->add($BrandName);
                        }
                        break;
                    case 'deleteBrand':
                        $idBrand= $_POST['idBrand'];
                        $BrandObj->delete($idBrand);
                        break;
                    case 'editBrand':
                        $newBrand = $_POST['newBrand'];
                        $idBrand = $_POST['idBrand'];
                        $BrandObj->edit($newBrand,$idBrand);
                        break;
                }
            }else{
                $allBrands  = $BrandObj->all();
            }    
            break;
        case 'product':
            $DungLuongObj= new DungLuong();
            $allDungLuong = $DungLuongObj->all();
            $colorObj = new Color();
            $allColor = $colorObj->all();
            $keyWordObj = new KeyWord();
            $allKeyWork = $keyWordObj->all();
            $BrandObj = new Brand();
            $allBrands  = $BrandObj->all();
            $ThietBiObj= new ThietBi();
            $allThietBi= $ThietBiObj->all();
            $ProductObj = new Products();
            $StorageObj = new Storage();
            $StorageAll =  $StorageObj->all();
            $allProduct1 = $ProductObj->all();
            $allBrands2 = $BrandObj->all2($conn);
            $allThietBi2=$ThietBiObj->all2($conn);
            $totalProd = count($allProduct1);
            $limit=3;
            $totalPage = ceil($totalProd/$limit); 
            $allIdProd = $ProductObj->getAllIdProd();
            $currentPage='';
            if(isset($_GET['pageNum'])){
                $currentPage = $_GET['pageNum'];
            }else{
                $currentPage=1;
            }
            $offset = ($currentPage-1)*$limit;
            $allProduct = $ProductObj->allPT($limit,$offset);
            $stt= '';
            if(isset($_GET['stt'])){
                $stt =$_GET['stt'];
                switch ($stt) {
                    case 'fail':
                        switch ($_GET['rs']) {
                            case 'empty':
                                $_SESSION['thongbao'] ='Bạn điền thiếu thông tin rồi';
                                break;
                            case 'exist':
                                $_SESSION['thongbao'] ='Nhãn này đã có !';
                                break;
                            case 'existProd':
                                $_SESSION['thongbao'] ='Sản phẩm này đã có !';
                                break;
                            default:
                                # code...
                                break;
                        }
                        break;
                    case 'success':
                        $_SESSION['thongbao'] ='Đã thêm thành công !';
                        break;
                    default:
                        # code...
                        break;
                }
            }
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'UPPrice':
                    $idProd=$_GET['idProd'];
                    $minPrice = $ProductObj->getMinMaxPrice($idProd);
                    $min='';
                    $max = '';
                    foreach ($minPrice as $value) {
                        $min = $value['minprice'];
                        $max = $value['maxprice'];
                    }
                    $ProductObj->UDMinMaxPrice($idProd,$min,$max);
                    header("location:index.php?page=product&&act=editProd&&option=editProd&&idProd=".$idProd);
                        break;
                    case 'addtoStore':
                        $idProd = $_GET['idProd'];
                        $allCTSP = $ProductObj->searchColorOneProduct($idProd);
                        $checkKho='';
                        foreach ($allCTSP as $value) {
                            $idChitietSP = $value['idChitiet'];
                            $checkKho= $ProductObj->checkStorage($idChitietSP);
                            if($checkKho==0){
                                foreach ($StorageAll as $value2) {
                                    $idKho = $value2['idKho'];
                                    $ProductObj->addstorage($idChitietSP,$idKho);
                                }
                            }
                        }
                        header("location:index.php?page=product&&act=editProd&&option=editProd&&idProd=".$idProd);
                        break;
                    case 'themPhienBanSP':
                        $idProd=$_GET['idProd'];
                        if(isset($_POST['addOptionBtn'])){
                            $idMau= $_POST['maMau'];
                            $idDungLuong= $_POST['maDungLuong'];
                            if($idDungLuong==''){
                                $check =$ProductObj->checkCTSPKoDungLuong($idProd,$idMau);
                                if($check==0){
                                    $ProductObj->UDCTSP1($idMau,$idProd);
                                }else{
                                    header("location:index.php?page=product&&act=editProd&&option=editProd&&option2=addOption&&idProd=".$idProd);
                                }
                            }else{
                                $check = $ProductObj->checkUDCTSP($idMau,$idProd,$idDungLuong);
                                if($check ==0){
                                    $ProductObj->UDCTSP($idMau,$idProd,$idDungLuong);
                                }else{
                                    header("location:index.php?page=product&&act=editProd&&option=editProd&&option2=addOption&&idProd=".$idProd);
                                }
                            }
                            header("location:index.php?page=product&&act=editProd&&option=editProd&&option2=addOption&&idProd=".$idProd);
                        }else{
                            header("location:index.php?page=product&&act=editProd&&option=editProd&&option2=addOption&&idProd=".$idProd);
                        }
                        break;
                    case 'addProdFile':
                        if(isset($_POST["submit_file"])){
                            $uploadfile= $_FILES['excel']['tmp_name'];
                            include 'Classes/PHPExcel.php';
                            include 'Classes/PHPExcel/IOFactory.php';
                            $objExcel=PHPExcel_IOFactory::load($uploadfile);
                            foreach($objExcel->getWorksheetIterator() as $worksheet)
                            {
                                $highestrow=$worksheet->getHighestRow();
                                for($row=1;$row<=$highestrow;$row++)
                                {
                                    $ProdName = $worksheet->getCellByColumnAndRow(0,$row)->getValue();
                                    $discount = $worksheet->getCellByColumnAndRow(1,$row)->getValue();
                                    $idBrand = $worksheet->getCellByColumnAndRow(5,$row)->getValue();
                                    $idThietBi = $worksheet->getCellByColumnAndRow(4,$row)->getValue();
                                    $description ='';
                                    $content='';
                                    $ProductObj->addProduct($conn,$ProdName,$discount,$description,$content,$idBrand,$idThietBi,$date);
                                }
                                
                            }
                            header("location:index.php?page=product&&option=upform");
                        }
                        break;
                    case 'downloadAddProdForm':
                        include 'Classes/PHPExcel.php';
                        $objPHPExcel    =   new PHPExcel();
                        $objPHPExcel->setActiveSheetIndex(0);
                        $objPHPExcel->getActiveSheet()->SetCellValue('A1', 'Tên sản phẩm');
                        $objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Chiết khấu');
                        $objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Tên Thiết Bị');
                        $objPHPExcel->getActiveSheet()->SetCellValue('D1', 'Tên Thương Hiệu');
                        $objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Mã Thiết Bị');
                        $objPHPExcel->getActiveSheet()->SetCellValue('F1', 'Mã Thương Hiệu');
                        $objPHPExcel->getActiveSheet()->SetCellValue('H1', 'Thiết bị');
                        $objPHPExcel->getActiveSheet()->SetCellValue('I1', 'Mã Thiết bị');
                        $objPHPExcel->getActiveSheet()->SetCellValue('J1', 'Thương hiệu');
                        $objPHPExcel->getActiveSheet()->SetCellValue('K1', 'Mã Thương hiệu');
                        $objPHPExcel->getActiveSheet()->getStyle("A1:K1")->getFont()->setBold(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("A")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("B")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("C")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("D")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("E")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("F")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("H")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("I")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("J")->setAutoSize(true);
                        $objPHPExcel->getActiveSheet()->getColumnDimension("K")->setAutoSize(true);
                        $objWriter  =   new PHPExcel_Writer_Excel2007($objPHPExcel);
                        $rowCount   =   2;
                            $objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount,'=VLOOKUP(D2,$J:$K,2,FALSE)');
                            $objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount,'=VLOOKUP(C2,$H:$I,2,FALSE)');
                        while($row  =   mysqli_fetch_assoc($allBrands2)){
                            $objPHPExcel->getActiveSheet()->SetCellValue('J'.$rowCount, mb_strtoupper($row['BrandName'],'UTF-8'));
                            $objPHPExcel->getActiveSheet()->SetCellValue('K'.$rowCount, mb_strtoupper($row['idBrand'],'UTF-8'));
                            $rowCount++;
                        }
                        $rowCount = 2;
                        while($row  =  mysqli_fetch_assoc($allThietBi2)){
                            $objPHPExcel->getActiveSheet()->SetCellValue('H'.$rowCount, mb_strtoupper($row['tenThietBi'],'UTF-8'));
                            $objPHPExcel->getActiveSheet()->SetCellValue('I'.$rowCount, mb_strtoupper($row['idThietBi'],'UTF-8'));
                            $rowCount++;
                        }
                        header('Content-Type: application/vnd.ms-excel'); //mime type
                        header('Content-Disposition: attachment;filename="FormMau.xlsx"'); //tell browser what's the file name
                        header('Cache-Control: max-age=0'); //no cache
                        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');  
                        $objWriter->save('php://output');
                        header("location:index.php?page=product");
                        break;
                    case 'switchProduct':
                        $idProd= $_POST['idProd'];
                        $SingleProduct= $ProductObj->getSingleProduct($idProd);
                        $oldStatus='';
                        $newStatus = '';
                        $tongSoLuongSP= '';
                        foreach ($SingleProduct as  $value) {
                            $oldStatus = $value['status'];
                        }
                        $result = $ProductObj->getTongTon1($idProd);
                        foreach ($result as $value) {
                            $tongSoLuongSP=$value['TongSP'];
                        }
                        if($oldStatus==0 &&$tongSoLuongSP!=0){
                            $newStatus=1;
                        }else{
                            $newStatus=0;
                        }
                        $ProductObj->UDStatus($newStatus,$idProd);
                        break;
                    case 'SinglePrice':
                        $idCTSP = $_POST['idCT'];
                        $newPrice = $_POST['newPrice'];
                        $ProductObj->UDPrice($idCTSP,$newPrice);
                        break;
                    case 'selectImg2':
                        $imgName= $_POST['imgName'];
                        $idProd=$_POST['idProd'];
                        $ProductObj->UDImg2($imgName,$idProd);
                        break;
                    case 'selectImg1':
                        $imgName= $_POST['imgName'];
                        $idProd=$_POST['idProd'];
                        $ProductObj->UDImg1($imgName,$idProd);
                        break;
                    case 'deleteSingleImage':
                        $idGallery = $_POST['idGallery'];
                        $image='';
                        $result = $ProductObj->getImgProduct($idGallery);
                        foreach ($result as $value) {
                            $image = $value['image'];
                        }
                        unlink($image_update.$image);
                        $ProductObj->deleteSingleImg($idGallery);
                        break;
                    case 'deleteProduct':
                        $idProd =$_POST['idProd'];
                        $prodGallery = $ProductObj->getAllImage($idProd);
                        if(count($prodGallery)==0){
                            $ProductObj->deleteProduct($idProd);
                        }else{
                            $imageCollection = $ProductObj->getSingleProdImage($idProd);
                            foreach ($imageCollection as $value) {
                            $imageNameCol = $value['image'];
                            unlink($image_update.$imageNameCol);
                            }
                            $ProductObj->deleteProduct($idProd);
                        }
                        break;
                    case 'submitEditProd':
                        if(isset($_POST['editProdBtn'])){
                            $idProd = $_POST['idProd'];
                            $ProdName = $_POST['ProdName'];
                            $discount = $_POST['discount'];
                            $tagCollection = $_POST['tagCollection'];
                            $tagCollect = [];
                            $test=$_POST['tagCollection'];
                                if ($test){
                                foreach ($test as $t){$tagCollect=$test;}
                                }
                            $description = $_POST['description'];
                            $content = $_POST['content'];
                            $idBrand = $_POST['brand'];
                            $idThietBi = $_POST['thietbi'];
                            if(count($tagCollect)!=0){
                                $ProductObj->UpdateProduct($idProd,$ProdName,$discount,$description,$content,$idBrand,$idThietBi,$date);
                                $ProductObj->deleteOldKey($idProd);
                                foreach ($tagCollect as $value) {
                                    $ProductObj->addKey($idProd,$value);
                                }
                                header("location:index.php?page=product&&act=editProd&&option=editProd&&option2=editInfo&&idProd=".$idProd."&&stt=success");
                            }else{
                                header("location:index.php?page=product&&act=editProd&&option=editProd&&option2=editInfo&&idProd=".$idProd);
                            }
                        }
                        break;
                    case 'editProd':
                        $idProd= $_GET['idProd'];
                        $ProductName = $ProductObj->getSingleProductName($idProd);
                        $SingleProduct= $ProductObj->getSingleProduct($idProd);
                        $SingleProduct2 = $ProductObj->getSingleProductStorage($idProd);
                        $alltagSingleProd = $ProductObj->searchtagOneProduct($idProd);
                        $allProductImage = $ProductObj->getSingleProdImage($idProd);
                        $DetailProduct = $ProductObj-> getdetailProduct($idProd);
                        $image1 ='';
                        $image2='';
                        foreach ($ProductName as $value) {
                            $productName = $value['tenSP'];
                        }
                        foreach ($SingleProduct as $value ) {
                            $image1 = $value['image'];
                            $image2 = $value['image2'];
                        }
                        break;
                    case 'addProdGallery':
                        if(isset($_POST['addPicBtn'])){
                            $Pictures_tmp = $_FILES['Pictures']['tmp_name'];
                            $Pictures = $_FILES['Pictures']['name'];
                            $idProd = $_POST['idProd'];
                            if($idProd==''||count($Pictures)==0){
                                header("location:index.php?page=product&&option=addImage&&stt=fail&&rs=empty");
                            }else{
                                foreach ( $Pictures as $key => $value) {
                                    move_uploaded_file($Pictures_tmp[$key],$image_update.$value);
                                    $ProductObj->addProdImage($idProd,$value);
                                }
                                header("location:index.php?page=product&&act=editProd&&option=editProd&&option2=addImg&&idProd=".$idProd."&&stt=success");
                            }
                        }
                        break;
                    case 'xoaCTSP':
                        $idCTSP = $_POST['idCTSP'];
                        $ProductObj->deleteCTSP($idCTSP);
                        break;
                    case 'chitietsp':
                        $idProd= $_GET['idProd'];
                        $ProductName = $ProductObj->getSingleProductName($idProd);
                        $SingleProduct= $ProductObj->getSingleProductStorage($idProd);
                        break;
                    case 'addTag':
                        $keyWord = $_POST['keyWord'];
                        $check = $keyWordObj->check($keyWord);
                        if($check==0){
                            $keyWordObj-> add($keyWord);
                        }
                        break;
                    case 'deleteTag':
                        $idKey= $_POST['idKey'];
                        $keyWordObj->delete($idKey);
                        break;
                    case 'editTag':
                        $newKeyWord = $_POST['newKeyWord'];
                        $idKey = $_POST['idKey'];
                        $keyWordObj->edit($idKey,$newKeyWord);
                        break;
                    case 'addproduct':
                        if(isset($_POST['addProdBtn'])){
                            $ProdName = $_POST['ProdName'];
                            $discount = $_POST['discount'];
                            $tagCollection = $_POST['tagCollection'];
                            $collorcollect= $_POST['ColorCollection'];
                            $dungluongcollect = $_POST['dungluongcollect'];
                            $tagCollect = [];
                            $colorCollect = [];
                            $dungLuongCollect=[];
                            $test=$_POST['ColorCollection'];
	                        if ($test){
	                        foreach ($test as $t){$colorCollect=$test;}
	                        }
                            $test=$_POST['dungluongcollect'];
	                        if ($test){
	                        foreach ($test as $t){$dungLuongCollect=$test;}
	                        }
                            $test=$_POST['tagCollection'];
	                        if ($test){
	                        foreach ($test as $t){$tagCollect=$test;}
	                        }
                            $description = $_POST['description'];
                            $content = $_POST['content'];
                            $idBrand = $_POST['brand'];
                            $idThietBi = $_POST['thietbi'];
                            $idProd = $ProductObj->addProduct($conn,$ProdName,$discount,$description,$content,$idBrand,$idThietBi,$date);
                            foreach ($tagCollect as $value) {
                                $ProductObj->addProdTag($idProd,$value);
                            }
                            foreach ($colorCollect as $value) {
                                foreach ($dungLuongCollect as $value1) {
                                    $idChitietSP = $ProductObj->addProdColor($conn,$idProd,$value,$value1);
                                    foreach ($StorageAll as $value2) {
                                        $idKho = $value2['idKho'];
                                        $ProductObj->addstorage($idChitietSP,$idKho);
                                    }
                                }
                            }
                            header("Location:index.php?page=product&&stt=success");

                        }else{
                            header("Location:index.php?page=product");
                        }
                        break;    
                    default:
                        break;   
                }
            }else{

            }    
            break;
        case 'storage':
            $StorageObj = new Storage();
            $ProductObj = new Products();
            $allProduct = $ProductObj->all();
            $StorageAll =  $StorageObj->all();
            $allProducts = $StorageObj->getallProductStore();
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'addStorage':
                        $maKho = $_POST['maKho'];
                        $thongTin = $_POST['thongTin'];
                        $check = $StorageObj->check($maKho);
                        if($check==0){
                            $StorageObj->add($maKho,$thongTin);
                        }
                        break;
                    case 'deleteStorage':
                        $idKho = $_POST['idKho'];
                        $StorageObj->del($idKho);
                        break;
                    case 'updateStorage':
                        $idKho=$_POST['idKho'];
                        $maKhoMoi=$_POST['maKhoMoi'];
                        $thongTinMoi=$_POST['thongTinMoi'];
                        $StorageObj->edit($idKho, $maKhoMoi, $thongTinMoi);
                        break;
                    case 'allProduct':
                        $allProducts = $StorageObj->getallProductStore();
                        break;
                    case 'singleProd':
                        $idProd = $_GET['idProd'];
                        $Product = $StorageObj->getSingleProduct($idProd);
                        if(isset($_GET['idTon'])){
                            $idTon = $_GET['idTon'];
                            $thongTinTon = $StorageObj->getInfoStorage($idTon);
                            $idChitietSP='';
                            $idKho ='';
                            foreach ($thongTinTon as $value) {
                                $idChitietSP=$value['idChitietSP'];
                                $idKho = $value['idKho'];
                            }
                        }
                        break;
                    case 'UDStorage':
                        $idTon= $_POST['idTon'];
                        $soLuongTonKho= $_POST['soLuongTonKho'];
                        $StorageObj->UDTONKHO($idTon,$soLuongTonKho);
                        $result = $StorageObj->selectIdCTSP($idTon);
                        $idChitiet='';
                        foreach ($result as $value) {
                            $idChitiet=$value['idChitietSP'];
                        }
                        $tongTon1VSSP='';
                        $result2 = $StorageObj->TotalSingleProduct($idChitiet);
                        foreach ($result2 as $value) {
                            $tongTon1VSSP=$value['TongTon'];
                        }
                        $ProductObj->UDSingleVersion($idChitiet,$tongTon1VSSP);
                        $idProd='';
                        $result3= $ProductObj->getIdProd($idChitiet);
                        foreach ($result3 as $value) {
                            $idProd=$value['idProd'];
                        }
                        $tongTon1SP='';
                        $result4=$ProductObj->getTongTon($idProd);
                        foreach ($result4 as $value) {
                            $tongTon1SP=$value['TongSL1SP'];
                        }
                        $ProductObj->UPTOTALPROD($idProd,$tongTon1SP);
                        break;
                    default:
                        # code...
                        break;
                }
            }else{
                $StorageAll =  $StorageObj->all();
            }
            break;
        case 'dungluong':
            $DungLuongObj= new DungLuong();
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'addDungLuong':
                        $DungLuong = $_POST['DungLuong'];
                        $check = $DungLuongObj->check($DungLuong);
                        if($check==0){
                            $DungLuongObj->add($DungLuong);
                        }
                        break;
                    case 'delDungLuong':
                        $idDungLuong = $_POST['idDungLuong'];  
                        $DungLuongObj->del($idDungLuong);
                        break;
                    case 'editDungLuong':
                        $idDungLuong = $_POST['idDungLuong'];
                        $newDungLuong = $_POST['newDungLuong'];
                        $DungLuongObj->edit($idDungLuong,$newDungLuong);
                        break;
                    default:
                        # code...
                        break;
                }
            }else{
                $allDungLuong = $DungLuongObj->all();
            }
            break;
        case 'color':
            $colorObj = new Color();
            if(isset($_GET['act'])){
                switch ($_GET['act']) {
                    case 'addColor':
                        $maMau = $_POST['maMau'];
                        $tenMau = $_POST['tenMau'];
                        $check = $colorObj->check($maMau);
                        if($check==0){
                            $colorObj->add($maMau,$tenMau);
                        }
                        break;
                    case 'delColor':
                        $idMaMauCu = $_POST['idMaMauCu'];
                        $colorObj->del($idMaMauCu);
                        break;
                    case 'editColor':
                        $tenMauMoi = $_POST['tenMauMoi'];
                        $maMauMoi = $_POST['maMauMoi'];
                        $idMaMauCu = $_POST['idMaMauCu'];
                        $colorObj->edit($tenMauMoi,$maMauMoi,$idMaMauCu);
                        break;
                    default:
                        # code...
                        break;
                }
            }else{
                $allColor = $colorObj->all();
            }
            break;
        default:
            # code...
            break;
    }
    include 'view/index.php';   
    unset($_SESSION['thongbao']);
?>