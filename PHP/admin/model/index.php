<?php
    include '../pdo.php';
    $conn = mysqli_connect('localhost','root','','asmphp2');
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $date = date("Y-m-d h:i:s");
            class SUPPORT{
                function all(){
                    $sql = "SELECT * FROM support";
                   return pdo_query($sql);;
                    // $this->query($sql);
                }
                function UDCT($status,$note,$date,$idPhieu){
                    $sql ="UPDATE support SET status=$status,note='$note',date='$date' WHERE idSport=$idPhieu";
                   return pdo_query($sql);;
                    // pdo_execute($sql);
                }
                function delete($idPhieu){
                    $sql = "DELETE FROM support WHERE idSport=$idPhieu";
                    // pdo_execute($sql);
                   return pdo_query($sql);
                }
            }
            class HINT{
                function all(){
                    $sql = "SELECT * FROM chatbot_hints";
                   return pdo_query($sql);
                    // $this->query($sql);
                }
                function delete($idHint){
                    $sql = "DELETE FROM chatbot_hints WHERE id=$idHint";
                   return pdo_query($sql);;
                }
                function edit($idHint,$newHint,$newanswer){
                    $sql = "UPDATE chatbot_hints SET question='$newHint', reply='$newanswer' WHERE id=$idHint ";
                    pdo_execute($sql);
                }
                function add( $newHint,$answer){
                    $sql = "INSERT INTO chatbot_hints(question,reply) VALUES('$newHint','$answer')";
                    pdo_execute($sql);
                }
            }
            class BILL {
                function all(){
                    $sql = "SELECT *,hoadon.status as 'sttHD' FROM hoadon INNER JOIN users ON hoadon.userID= users.idUser INNER JOIN khohang ON hoadon.idKho=khohang.idKho";
                   return pdo_query($sql);
                }
                function getsingle($idBill){
                    $sql = "SELECT * FROM `hoadon` INNER JOIN bangtinh ON hoadon.idTinh=bangtinh.idTinh INNER JOIN hoadonchitiet ON hoadon.idHoaDon=hoadonchitiet.idHD INNER JOIN users ON hoadon.userID=users.idUser INNER JOIN khohang ON hoadon.idKho = khohang.idKho  WHERE hoadon.idHoaDon=$idBill";
return pdo_query($sql);
                }
                function getHDCT($idBill){
                    $sql = "SELECT * FROM hoadonchitiet INNER JOIN chitietsanpham ON hoadonchitiet.idCTHH=chitietsanpham.idChitiet INNER JOIN bangdungluong ON chitietsanpham.maDungLuong=bangdungluong.idDungLuong INNER JOIN bangmau on chitietsanpham.maMau =bangmau.idMau INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd WHERE hoadonchitiet.idHD=$idBill";
return pdo_query($sql);
                }
                function allTheoStatus($status){
                    $sql ="SELECT *,hoadon.status as 'sttHD' FROM hoadon INNER JOIN users ON hoadon.userID= users.idUser INNER JOIN khohang ON hoadon.idKho=khohang.idKho WHERE hoadon.status=$status";
return pdo_query($sql);
                }
                function getOneBillInfo($idBill){
                    $sql = "SELECT *,hoadon.status as 'tinhtrang',hoadon.note as 'ghiChu' FROM hoadon INNER JOIN users ON hoadon.userID=users.idUser INNER JOIN bangtinh ON  hoadon.idTinh=bangtinh.idTinh WHERE idHoaDon=$idBill";
return pdo_query($sql);
                }
                function getBillsFromArea($thongTin){
                    $sql = "SELECT *,hoadon.status as 'sttHD' FROM `hoadon` INNER JOIN users ON hoadon.userID= users.idUser INNER JOIN khohang ON hoadon.idKho=khohang.idKho WHERE khohang.thongTin LIKE '$thongTin'";
return pdo_query($sql);
                }
                function getBillsFromArea2($thongTin,$status){
                    $sql = "SELECT *,hoadon.status as 'sttHD' FROM `hoadon` INNER JOIN users ON hoadon.userID= users.idUser INNER JOIN khohang ON hoadon.idKho=khohang.idKho WHERE khohang.thongTin LIKE '$thongTin' AND hoadon.status=$status ";
return pdo_query($sql);
                }
                function UDBILL($MVD,$status,$idHD){
                    $sql ="UPDATE hoadon SET maVanDon='$MVD',status=$status WHERE idHoaDon=$idHD";
                    pdo_execute($sql);
                }
                function CountSP($idHD){
                    $sql = "SELECT * FROM hoadonchitiet WHERE idHD =$idHD";
                    return count(pdo_query($sql));
                }
                function UDSTTBILL($maVanDon,$status){
                    $sql = "UPDATE hoadon SET status=$status WHERE maVanDon='$maVanDon'";
                    pdo_execute($sql);
                }
                function UDSTTBILL2($maVanDon,$status,$note,$date){
                    $sql = "UPDATE hoadon SET status=$status,note='$note',ngayNhanHang='$date' WHERE maVanDon='$maVanDon'";
                    pdo_execute($sql);
                }
                function UDSTTBILL3($maVanDon,$status,$note,$date){
                    $sql = "UPDATE hoadon SET status=$status,note='$note',ngayHoanHang='$date' WHERE maVanDon='$maVanDon'";
                    pdo_execute($sql);
                }
                function UDHH($idHD,$status){
                    $sql = "UPDATE hoadon SET status=$status WHERE idHoaDon=$idHD";
                    pdo_execute($sql);
                }
                function getHDFromMVD($maVanDon){
                    $sql = "SELECT * FROM hoadon WHERE maVanDon='$maVanDon'";
return pdo_query($sql);
                }
                
            }
            class USER {
                function UDUSerRole($idRole,$note,$date,$idUser){
                    $sql ="UPDATE users SET idRole=$idRole,note='$note',date='$date'WHERE idUser=$idUser";
                    pdo_execute($sql);
                }
                function allUsers(){
                    $sql = "SELECT * FROM users INNER JOIN role ON users.idRole=role.idRole";
return pdo_query($sql);
                }
                function UDUSer($status,$idUser,$note,$date){
                    $sql = "UPDATE users SET status=$status,note='$note',date='$date',count=1 WHERE idUser=$idUser";
                    pdo_execute($sql);
                }
                function checkRole($RoleName){
                    $sql = "SELECT * FROM role WHERE tenRole='$RoleName'";
                    return count(pdo_query($sql));
                }
                function addRole($RoleName){
                    $sql = "INSERT INTO role (tenRole) VALUE('$RoleName')";
                    pdo_execute($sql);
                }
                function all(){
                    $sql = "SELECT * FROM role ";
return pdo_query($sql);
                }
                function edit($idRole,$newRole){
                    $sql = "UPDATE role SET tenRole='$newRole' WHERE idRole=$idRole";
                    pdo_execute($sql);
                }
                function delete($idRole){
                    $sql = "DELETE FROM role WHERE idRole=$idRole";
                    pdo_execute($sql);
                }
                function searchUser($username){
                    $sql = "SELECT * FROM users INNER JOIN role ON users.idRole=role.idRole WHERE username='$username'";
return pdo_query($sql);
                }
                function addUser($username,$fullName,$password2,$passReset,$email,$status,$idRole,$note,$date){
                    $sql = "INSERT INTO users(username,fullname,password,passReset,email,status,idRole,note,date)
                    VALUES('$username','$fullName','$password2','$passReset','$email',$status,$idRole,'$note','$date')
                    ";
                    pdo_execute($sql);
                }
            }
            class Transport {
                function UPPVC($maTinh,$PVC){
                    $sql = "UPDATE bangphivanchuyen SET phiVanChuyen=$PVC WHERE maTinh=$maTinh";
                    pdo_execute($sql);
                }
                function UDHH($status,$idHD){
                    $sql = "UPDATE vanchuyen SET status = $status, note='Đã hoàn hàng' WHERE idHD=$idHD";
                    pdo_execute($sql);
                }
                function getAllPVCMienBac(){
                    $sql = "SELECT * FROM `bangphivanchuyen` INNER JOIN bangtinh on bangphivanchuyen.maTinh=bangtinh.idTinh INNER JOIN mientbl ON bangtinh.maMien=mientbl.idMien WHERE mientbl.tenMien LIKE '%Bắc%'";
return pdo_query($sql);
                }
                function getAllPVCMienTrung(){
                    $sql = "SELECT * FROM `bangphivanchuyen` INNER JOIN bangtinh on bangphivanchuyen.maTinh=bangtinh.idTinh INNER JOIN mientbl ON bangtinh.maMien=mientbl.idMien WHERE mientbl.tenMien LIKE '%Trung%'";
return pdo_query($sql);
                }
                function getAllPVCMienNam(){
                    $sql = "SELECT * FROM `bangphivanchuyen` INNER JOIN bangtinh on bangphivanchuyen.maTinh=bangtinh.idTinh INNER JOIN mientbl ON bangtinh.maMien=mientbl.idMien WHERE mientbl.tenMien LIKE '%Nam%'";
return pdo_query($sql);
                }
                function checkMVD($MVD){
                    $sql = "SELECT * FROM hoadon WHERE maVanDon='$MVD'";
                    return count(pdo_query($sql));
                }
                function checkidHD($idHD){
                    $sql = "SELECT * FROM  vanchuyen WHERE idHD=$idHD";
                    return count(pdo_query($sql));
                }
                function addVanChuyen($MVD,$idHD,$soLuongSP,$tongGiaTri,$status){
                    $sql = "INSERT INTO vanchuyen (maVanDon,idHD,soLuongSP,TongGiaTri,status)
                        VALUES('$MVD',$idHD,$soLuongSP,$tongGiaTri,$status)
                    ";
                    pdo_execute($sql);
                } 
                function getAllTransportBills(){
                    $sql = "SELECT * FROM vanchuyen";
return pdo_query($sql);
                }
                function UDVC($maVanDon,$status){
                    $sql = "UPDATE vanchuyen set status=$status WHERE maVanDon='$maVanDon'";
                    pdo_execute($sql);
                }
                function UDVC2($maVanDon,$status,$note){
                    $sql = "UPDATE vanchuyen set status=$status,note='$note' WHERE maVanDon='$maVanDon'";
                    pdo_execute($sql);
                }
                function getIdHD($idHD){
                    $sql = "SELECT * FROM vanchuyen WHERE idHD=$idHD";
return pdo_query($sql);
                }
                function UDREBOOKED($MVD){
                    $sql = "UPDATE vanchuyen SET status=1 WHERE maVanDon='$MVD'";
                    pdo_execute($sql);
                }
            }
            class Mien{
                function checkMien($tenMien){
                    $sql = "SELECT * FROM mientbl WHERE tenMien='$tenMien'";
                    return count(pdo_query($sql));
                }
                function addMien($tenMien){
                    $sql = "INSERT INTO mientbl(tenMien) VALUE('$tenMien')";
                    pdo_execute($sql);
                }
                function all(){
                    $sql ="SELECT * FROM mientbl";
return pdo_query($sql);
                }
                function delete($idMien){
                    $sql = "DELETE FROM mientbl WHERE idMien=$idMien";
                    pdo_execute($sql);
                }
                function edit($idMien,$newMien){
                    $sql = "UPDATE mientbl SET tenMien='$newMien' WHERE idMien=$idMien";
                    pdo_execute($sql);
                }
            } 
            class Tinh {
                function checkTinh($tenTinh){
                    $sql = "SELECT * FROM bangtinh WHERE tenTinh='$tenTinh'";
                    return count(pdo_query($sql));
                }
                function getOTherTinh(){
                    $sql = "SELECT * FROM `bangtinh` WHERE tenTinh NOT LIKE '%Hà Nội%' AND tenTinh NOT LIKE '%Đà Nẵng%' AND tenTinh NOT LIKE '%Sài Gòn%'";
return pdo_query($sql);
                }
                function add($conn,$idMien,$tenTinh){
                    $sql = "INSERT INTO bangtinh(tenTinh,maMien) VALUES('$tenTinh',$idMien)";
                    mysqli_query($conn,$sql);
                    $maTinh = mysqli_insert_id($conn);
                    $sql2="INSERT INTO bangphivanchuyen(maTinh,phiVanChuyen) VALUES($maTinh,0)";
                    mysqli_query($conn,$sql2);
                }
                function all(){
                    $sql = "SELECT * FROM bangtinh INNER JOIN mientbl ON bangtinh.maMien=mientbl.idMien ORDER BY bangtinh.maMien ASC";
return pdo_query($sql);
                }
                function delete($idTinh){
                    $sql = "DELETE FROM bangtinh WHERE idTinh=$idTinh";
                    pdo_execute($sql);
                    $sql2 = "DELETE FROM bangphivanchuyen WHERE maTinh=$idTinh";
                    pdo_execute($sql2);
                }
                function edit($idTinh,$newTinh){
                    $sql = "UPDATE bangtinh SET tenTinh='$newTinh' WHERE idTinh=$idTinh";
                    pdo_execute($sql);
                }
            }
            class ThietBi {
                function all(){
                    $sql = "SELECT * FROM thietbi";
                    return pdo_query($sql);
                }
                function delete($idThietBi){
                    $sql = "DELETE FROM thietbi WHERE idThietBi=$idThietBi";
                    pdo_execute($sql);
                }
                function check($tenTB){
                    $sql = "SELECT * FROM thietbi WHERE tenThietBi='$tenTB'";
                    return count(pdo_query($sql));
                }
                function edit($newTB,$idThietBi){
                    $sql = "UPDATE thietbi SET tenThietBi='$newTB',status=0 where idThietBi=$idThietBi";
                    pdo_execute($sql);
                }
                function add($tenTB){
                    $sql = "INSERT INTO thietbi (tenThietBi) values('$tenTB')";
                    pdo_execute($sql);
                }
                function all2($conn){
                    $sql = "SELECT * FROM thietbi";
                    return mysqli_query($conn,$sql);
                }
            }
            class Brand {
                function check($BrandName){
                    $sql = "SELECT * FROM  thuonghieu WHERE BrandName='$BrandName'";
                    return count(pdo_query($sql));
                }
                function add($BrandName){
                    $sql= "INSERT INTO thuonghieu(BrandName,status) VALUES('$BrandName',0)";
                    pdo_execute($sql);
                }
                function all(){
                    $sql = "SELECT * FROM thuonghieu";
                    return pdo_query($sql);
                }
                function delete($idBrand){
                    $sql = "DELETE FROM thuonghieu WHERE idBrand=$idBrand";
                    pdo_execute($sql);
                }
                function edit($newBrand,$idBrand){
                    $sql = "UPDATE thuonghieu SET BrandName='$newBrand',status=0 WHERE idBrand=$idBrand";
                    pdo_execute($sql);
                }
                function all2($conn){
                    $sql = "SELECT * FROM thuonghieu";
                    return mysqli_query($conn,$sql);
                }
            }
            class KeyWord {
                function all(){
                    $sql = "SELECT * FROM keyword";
return pdo_query($sql);
                }
                function check($keyWord){
                    $sql = "SELECT * FROM keyword WHERE keyword='$keyWord'";
                    return count(pdo_query($sql));
                }
                function add($keyWord){
                    $sql = "INSERT INTO keyword(keyword) VALUES('$keyWord')";
                    pdo_execute($sql);
                }
                function delete($idKey){
                    $sql = "DELETE FROM keyword WHERE idKey =$idKey";
                    pdo_execute($sql);
                }
                function edit($idKey,$newKeyWord){
                    $sql = "UPDATE keyword SET keyword='$newKeyWord' WHERE idKey=$idKey";
                    pdo_execute($sql);
                }
            }
            class Storage {
                function selectTonCu($idChitietSP,$idKho){
                    $sql = "SELECT * FROM  tonkho WHERE idChitietSP=$idChitietSP AND idKho=$idKho";
return pdo_query($sql);
                }
                function UDTonMua($idChitietSP,$soLuongMoi,$idKho){
                    $sql = "UPDATE tonkho SET soLuongTonKho=$soLuongMoi where idChitietSP=$idChitietSP AND idKho=$idKho";
                    pdo_execute($sql);
                }
                function all(){
                    $sql = "SELECT * FROM khohang";
return pdo_query($sql);
                }
                function deleteDH($idPhieu){
                    $sql = "DELETE FROM dieuhang WHERE idPhieu=$idPhieu";
                    pdo_execute($sql);
                }
                function SELECTKHONHAN($idCTSP,$idKho1){
                    $sql = "SELECT tonkho.soLuongTonKho as 'tonkhobandau' FROM tonkho WHERE tonkho.idKho=$idKho1 AND idChitietSP=$idCTSP";
return pdo_query($sql);
                }
                function UDKhoNhan($idCTSP,$idKho1,$soLuongTonKhoGuiAT){
                    $sql = "UPDATE tonkho SET soLuongTonKho=$soLuongTonKhoGuiAT WHERE idKho=$idKho1 AND idChitietSP=$idCTSP";
                    pdo_execute($sql);
                }
                function UDNhanHang($idPhieu,$status,$note,$date){
                    $sql = "UPDATE dieuhang SET status=$status,note='$note',ngayNhanHang='$date' WHERE idPhieu=$idPhieu";
                    pdo_execute($sql);
                }
                function UDKhoGui($soLuongTonKhoGuiAT,$idKho2,$idCTSP){
                    $sql ="UPDATE tonkho SET soLuongTonKho=$soLuongTonKhoGuiAT WHERE idKho=$idKho2 AND idChitietSP=$idCTSP";
                    pdo_execute($sql);
                }
                function searchPDH($idPhieu){
                    $sql = "SELECT * FROM dieuhang WHERE idPhieu=$idPhieu";
return pdo_query($sql);
                }
                function selectKhoGui($idCTSP,$idKho2){
                    $sql = "SELECT tonkho.soLuongTonKho as 'tonkhobandau' FROM tonkho WHERE tonkho.idKho=$idKho2 AND idChitietSP=$idCTSP";
return pdo_query($sql);
                }
                function searchCTDH($idPhieu){
                    $sql="SELECT * FROM dieuhang WHERE idPhieu=$idPhieu";
return pdo_query($sql);
                }

                function UDDieuHang($idPhieu,$idKho2,$status,$note,$date){
                    $sql = "UPDATE dieuhang SET idDauKho2=$idKho2,status=$status,note='$note',ngayGuiHang='$date' WHERE idPhieu=$idPhieu";
                    pdo_execute($sql);
                }
                function addDieuHang($idCTSP,$quantity,$idKho1,$note){
                    $sql = "INSERT INTO dieuhang(idDauKho1,idCTSP,soLuong,status,note)
                    VALUE($idKho1,$idCTSP,$quantity,0,'$note')
                    ";
                    pdo_execute($sql);
                }
                function searchStorage($thongTin){
                    $sql = "SELECT * FROM khohang WHERE thongTin='$thongTin'";
return pdo_query($sql);
                }
                function getAllDieuHang(){
                    $sql = "SELECT *,dieuhang.status as 'sttDieuHang' FROM `dieuhang` INNER JOIN khohang ON dieuhang.idDauKho1=khohang.idKho INNER JOIN chitietsanpham ON dieuhang.idCTSP=chitietsanpham.idChitiet INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong ON chitietsanpham.maDungLuong=bangdungluong.idDungLuong";
return pdo_query($sql);
                }
                function getAllDieuHangDen($thongTin){
                    $sql = "SELECT *,dieuhang.status as 'sttDieuHang' FROM `dieuhang` INNER JOIN khohang ON dieuhang.idDauKho1=khohang.idKho INNER JOIN chitietsanpham ON dieuhang.idCTSP=chitietsanpham.idChitiet INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong ON chitietsanpham.maDungLuong=bangdungluong.idDungLuong WHERE khohang.thongTin NOT LIKE '%$thongTin%' AND dieuhang.status!=2";
return pdo_query($sql);
                }
                function getAllDieuHangDi($thongTin){
                    $sql = "SELECT *,dieuhang.status as 'sttDieuHang' FROM `dieuhang` INNER JOIN khohang ON dieuhang.idDauKho1=khohang.idKho INNER JOIN chitietsanpham ON dieuhang.idCTSP=chitietsanpham.idChitiet INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong ON chitietsanpham.maDungLuong=bangdungluong.idDungLuong WHERE khohang.thongTin LIKE '%$thongTin%' AND dieuhang.status!=2";
return pdo_query($sql);
                }
                function add($maKho,$thongTin){
                    $sql = "INSERT INTO khohang(maKho,thongTin) VALUES('$maKho','$thongTin')";
                    pdo_execute($sql);
                }
                function check($maKho){
                    $sql = "SELECT * FROM khohang WHERE maKho='$maKho'";
                    return count(pdo_query($sql));
                }
                function del($idKho){
                    $sql = "DELETE FROM khohang WHERE idKho=$idKho";
                    pdo_execute($sql);
                }
                function edit($idKho, $maKhoMoi, $thongTinMoi){
                    $sql = "UPDATE khohang SET maKho= '$maKhoMoi',thongTin='$thongTinMoi' WHERE idKho=$idKho";
                    pdo_execute($sql);
                }
                function getallProductStore(){
                    $sql = "SELECT * FROM `sanpham` ";
return pdo_query($sql);
                }
                function getSingleProduct($idProd){
                    $sql = "SELECT *,khohang.thongTin as 'ThongTinKho' FROM `tonkho` INNER JOIN khohang ON tonkho.idKho = khohang.idKho INNER JOIN chitietsanpham ON tonkho.idChitietSP=chitietsanpham.idChitiet INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong on chitietsanpham.maDungLuong=bangdungluong.idDungLuong  WHERE idProd=$idProd ORDER BY tonkho.soLuongTonKho  ASC";
return pdo_query($sql);
                }
                function getInfoStorage($idTon){
                    $sql = "SELECT * FROM tonkho where idTon=$idTon";
return pdo_query($sql);
                }
                function UDTONKHO($idTon,$soLuongTonKho){
                    $sql ="UPDATE tonkho SET soLuongTonKho=$soLuongTonKho WHERE idTon=$idTon";
                    pdo_execute($sql);
                }
                function selectIdCTSP($idTon){
                    $sql = "SELECT tonkho.idChitietSP FROM tonkho WHERE idTon=$idTon";
return pdo_query($sql);
                }
                function TotalSingleProduct($idChitiet){
                    $sql = "SELECT sum(soLuongTonKho) as 'TongTon' FROM tonkho WHERE idChitietSP=$idChitiet";
return pdo_query($sql);
                }
                function getStoreInfo($idKho1){
                    $sql = "SELECT * FROM khohang WHERE idKho=$idKho1";
return pdo_query($sql);
                }
            }
            class DungLuong {
                function check($DungLuong){
                    $sql = "SELECT * FROM bangdungluong WHERE dungluong='$DungLuong'";
                    return count(pdo_query($sql));
                }
                function add($DungLuong){
                    $sql = "INSERT INTO bangdungluong(dungluong) VALUES('$DungLuong')";
                    pdo_execute($sql);
                }
                function all(){
                    $sql ="SELECT * FROM bangdungluong";
return pdo_query($sql);
                }
                function del($idDungLuong){
                    $sql = "DELETE FROM bangdungluong WHERE idDungLuong=$idDungLuong";
                    pdo_execute($sql);
                }
                function edit($idDungLuong,$newDungLuong){
                    $sql = "UPDATE bangdungluong SET dungluong = '$newDungLuong' WHERE idDungLuong=$idDungLuong";
                    pdo_execute($sql);
                }
            }
            class Color {
                function add($maMau,$tenMau){
                    $sql = "INSERT INTO bangmau(tenMau,maMau) VALUES('$tenMau','$maMau')";
                    pdo_execute($sql);
                }
                function check($maMau){
                    $sql = "SELECT * FROM  bangmau WHERE maMau='$maMau'";
                    return count(pdo_query($sql));
                }
                function all(){
                    $sql = "SELECT * FROM bangmau";
return pdo_query($sql);
                }
                function del($idMaMauCu){
                    $sql = "DELETE FROM bangmau WHERE idMau=$idMaMauCu";
                    pdo_execute($sql);
                }
                function edit($tenMauMoi,$maMauMoi,$idMaMauCu){
                    $sql = "UPDATE bangmau SET tenMau='$tenMauMoi',maMau='$maMauMoi' WHERE idMau=$idMaMauCu";
                    pdo_execute($sql);
                }
            }
            class Products {
                function UDMinMaxPrice($idProd,$min,$max){
                    $sql = "UPDATE sanpham SET  minPrice=$min, maxPrice=$max WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function checkCTSPKoDungLuong($idProd,$idMau){
                    $sql = "SELECT * FROM chitietsanpham WHERE idSP=$idProd AND maMau=$idMau";
                    return count(pdo_query($sql));
                }
                function UDCTSP1($idMau,$idProd){
                    $sql = "INSERT INTO chitietsanpham (idSP,maMau) VALUES($idProd,$idMau)";
                    pdo_execute($sql);
                }
                function getMinMaxPrice($idProd){
                    $sql = "SELECT min(price) as 'minprice',max(price) as 'maxprice' FROM `chitietsanpham` WHERE idSP=$idProd";
                   return pdo_query($sql);
                }
                function checkExistCTSP($idProd){
                    $sql = "SELECT * FROM `chitietsanpham` WHERE idSP=$idProd";
                    return count(pdo_query($sql));
                }
                function getAllIdProd(){
                    $sql= "SELECT * FROM sanpham";
                   return pdo_query($sql);
                }
                function checkUDCTSP($idMau,$idProd,$idDungLuong){
                    $sql = "SELECT * FROM chitietsanpham WHERE idSP=$idProd AND maMau=$idMau AND maDungLuong=$idDungLuong";
                    return count(pdo_query($sql));
                }
                function checkStorage($idChitietSP){
                    $sql = "SELECT * FROM tonkho WHERE idChitietSP=$idChitietSP";
                    return count(pdo_query($sql));
                }
                function UDCTSP($idMau,$idProd,$idDungLuong){
                    $sql = "INSERT INTO chitietsanpham (idSP,maMau,maDungLuong) VALUES($idProd,$idMau,$idDungLuong)";
                    pdo_execute($sql);
                }
                function UDStatus($newStatus,$idProd){
                    $sql = "UPDATE sanpham SET status=$newStatus WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function UDPrice($idCTSP,$newPrice){
                    $sql = "UPDATE chitietsanpham SET price=$newPrice WHERE idChitiet=$idCTSP";
                    pdo_execute($sql);
                }
                function getAllImage($idProd){
                    $sql = "SELECT *,sanpham.image as 'prodFImage' FROM sanpham INNER JOIN prodgallery on sanpham.idProd=prodgallery.idProd  where sanpham.idProd=$idProd ";
                   return pdo_query($sql);
                }
                function UDImg2($imgName,$idProd){
                    $sql = "UPDATE sanpham SET image2='$imgName' WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function UDImg1($imgName,$idProd){
                    $sql = "UPDATE sanpham SET image='$imgName' WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function deleteSingleImg($idGallery){
                    $sql = "DELETE FROM prodgallery WHERE idGallery=$idGallery";
                    pdo_execute($sql);
                }
                function getSingleProdImage($idProd){
                    $sql="SELECT * FROM prodgallery WHERE idProd =$idProd";
                   return pdo_query($sql);
                }
                function deleteProduct($idProd){
                    $sql = "DELETE FROM sanpham WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function addProduct2($conn,$ProdName,$discount,$description,$content,$idBrand,$idThietBi,$date){
                    $sql = "INSERT INTO sanpham(tenSP,discount,description,content,status,soLuotXem,sale,idBrand,idThietBi,date)
                    VALUES('$ProdName',$discount,'$description','$content',0,0,0,$idBrand,$idThietBi,'$date')";
                    mysqli_query($conn,$sql);
                    return mysqli_insert_id($conn);
                    
                }
                function addProduct($conn,$ProdName,$discount,$description,$content,$idBrand,$idThietBi,$date){
                    $sql = "INSERT INTO sanpham(tenSP,discount,description,content,status,idBrand,idThietBi,date) 
                    VALUES('$ProdName',$discount,'$description','$content',0,$idBrand,$idThietBi,'$date')";
                    mysqli_query($conn,$sql);
                    return mysqli_insert_id($conn);
                }
                function addProdTag($idProd,$value){
                    $sql = "INSERT INTO productkey (idProd,idKey) VALUES($idProd,$value)";
                    pdo_execute($sql);
                }
                function addProdColor($conn,$idProd,$value,$value1){
                    $sql = "INSERT INTO chitietsanpham(idSP,maMau,maDungLuong) VALUES($idProd,$value,$value1)";
                    mysqli_query($conn,$sql);
                    return mysqli_insert_id($conn);
                }
                function addstorage($idChitietSP,$idKho){
                    $sql = "INSERT INTO tonkho(idChitietSP,idKho,soLuongTonKho) VALUES($idChitietSP,$idKho,0)";
                    pdo_execute($sql);
                }
                function all(){
                    $sql = "SELECT * FROM sanpham ";
                   return pdo_query($sql);
                }
                function allPT($limit,$offset){
                    $sql = "SELECT * FROM sanpham ORDER BY idProd DESC limit $limit offset $offset";
                   return pdo_query($sql);
                }
                function searchtagOneProduct($idProd){
                    $sql = "SELECT * FROM productkey where idProd=$idProd";
                   return pdo_query($sql);
                }
                function searchColorOneProduct($idProd){
                    $sql = "SELECT * FROM chitietsanpham WHERE idSP=$idProd";
                   return pdo_query($sql);
                }
                function deleteOldKey($idProd){
                    $sql ="DELETE FROM productkey WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function UpdateProduct($idProd,$ProdName,$discount,$description,$content,$idBrand,$idThietBi,$date){
                    $sql = "UPDATE sanpham SET tenSP='$ProdName',discount=$discount,description='$description',content='$content',status=0,soLuotXem=0,sale=0,idBrand=$idBrand,idThietBi=$idThietBi,date='$date' WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function addKey($idProd,$value){
                    $sql = "INSERT INTO productkey(idProd,idKey) VALUES($idProd,$value)";
                    pdo_execute($sql);
                }
                function getImgProduct($idGallery){
                    $sql ="SELECT prodgallery.image FROM prodgallery WHERE idGallery=$idGallery";
                   return pdo_query($sql);
                }
                function getdetailProduct($idProd){
                    $sql ="SELECT * FROM `chitietsanpham` INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong ON chitietsanpham.maDungLuong=bangdungluong.idDungLuong WHERE chitietsanpham.idSP=$idProd";
                   return pdo_query($sql);
                }
                function getSingleProduct($idProd){
                    $sql = "SELECT * FROM `sanpham`  WHERE idProd=$idProd";
                   return pdo_query($sql);
                }
                function getCTSP2($idChitietSP){
                    $sql = "SELECT chitietsanpham.idSP as 'idProd' FROM chitietsanpham WHERE idChitiet=$idChitietSP";
                   return pdo_query($sql);
                }
                function UDSale($idProd,$newSale){
                    $sql = "UPDATE sanpham SET sale=$newSale WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function getProductDetail($idProd){
                    $sql = "SELECT * FROM `sanpham` INNER JOIN chitietsanpham on sanpham.idProd=chitietsanpham.idSP WHERE sanpham.idProd=$idProd";
                   return pdo_query($sql);
                }
                function getSingleProductName($idProd){
                    $sql = "SELECT sanpham.tenSP as 'tenSP' FROM `sanpham`  WHERE idProd=$idProd";
                   return pdo_query($sql);
                }
                function getSingleProductStorage($idProd){
                    $sql ="SELECT * FROM `chitietsanpham` INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong on chitietsanpham.maDungLuong=bangdungluong.idDungLuong  WHERE idSP=$idProd ORDER BY bangdungluong.dungluong DESC"; 
                   return pdo_query($sql);
                }
                function deleteCTSP($idCTSP){
                    $sql = "DELETE FROM chitietsanpham WHERE idChitiet=$idCTSP";
                    pdo_execute($sql);
                }
                function addProdImage($idProd,$value){
                    $sql = "INSERT INTO  prodgallery(idProd,image) VALUES($idProd,'$value')";
                    pdo_execute($sql);
                }
                function UDSingleVersion($idChitiet,$tongTon1VSSP){
                    $sql = "UPDATE chitietsanpham SET quantity=$tongTon1VSSP WHERE idChitiet=$idChitiet";
                    pdo_execute($sql);
                }
                function getIdProd($idChitiet){
                    $sql = "SELECT chitietsanpham.idSP as 'idProd' FROM chitietsanpham WHERE idChitiet=$idChitiet";
                   return pdo_query($sql);
                }
                Function getTongTon($idProd){
                    $sql = "SELECT sum(quantity) as 'TongSL1SP' FROM chitietsanpham WHERE idSP=$idProd";
                   return pdo_query($sql);
                }
                function UPTOTALPROD($idProd,$tongTon1SP){
                    $sql = "UPDATE sanpham SET soLuongSP= $tongTon1SP WHERE idProd=$idProd";
                    pdo_execute($sql);
                }
                function getTongTon1($idProd){
                    $sql = "SELECT sanpham.soLuongSP as 'TongSP' FROM sanpham where idProd =$idProd";
                   return pdo_query($sql);
                }
            }
        ?>