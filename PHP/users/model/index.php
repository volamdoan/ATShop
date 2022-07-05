<?php 
    include 'pdo.php';
    $conn = mysqli_connect('localhost','root','','asmphp2');
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $date = date("Y-m-d h:i:s");
    class Tinh{
        function all(){
            $sql = "SELECT * FROM bangtinh INNER JOIN mientbl ON bangtinh.maMien=mientbl.idMien ORDER BY bangtinh.maMien ASC";
            return pdo_query($sql);
        }
        function getInfoTinh($idCity){
            $sql = "SELECT * FROM `bangtinh` INNER JOIN mientbl ON bangtinh.maMien=mientbl.idMien WHERE bangtinh.idTinh=$idCity";
            return pdo_query($sql);
        }
        function getTinh($tenTinh){
            $sql = "SELECT * FROM  bangtinh WHERE tenTinh LIKE '%$tenTinh%'";
            return pdo_query($sql);
        }
        function getPVC($idTinh){
            $sql = "SELECT * FROM `bangphivanchuyen` INNER JOIN bangtinh ON bangphivanchuyen.maTinh=bangtinh.idTinh WHERE bangtinh.idTinh=$idTinh";
            return pdo_query($sql);
        }
        function searchPVC($idTinh){
            $sql = "SELECT * FROM `bangphivanchuyen`  WHERE maTinh=$idTinh";
            return pdo_query($sql);
        }
    }
    class CONTACT {
        function getAllMessage($conn){
            $sql = "select * from message ORDER BY id DESC";
            return mysqli_query($conn,$sql);
        }
        function deleteMessage(){
            $sql = "delete from message";
            pdo_execute($sql);
        }
        function InsertContact($name,$email,$phoneCt,$message,$date){
            $sql = "INSERT INTO support (fullname,Phone,email,message,status,date)
            VALUES('$name','$phoneCt','$email','$message',0,'$date')
            ";
            pdo_execute($sql);
        }
    }
    class Bill{
        function addBill($conn,$date,$userID,$total,$PVC,$idCity,$idKho,$note,$tenNguoiNhan,$sdtNguoiNhan,$address){
            $sql = "INSERT INTO hoadon (ngayMua,userID,Total,PhiVanChuyen,status,idTinh,idKho,note,tenNguoiNhan,SDTNhanHang,diaChiNhanHang)
            VALUES('$date',$userID,$total,$PVC,0,$idCity,$idKho,'$note','$tenNguoiNhan','$sdtNguoiNhan','$address')
            ";
            mysqli_query($conn,$sql);
            return mysqli_insert_id($conn);
        }
        function addBillDetail($idBill,$idCTSP,$price,$soLuong){
            $sql = "INSERT INTO hoadonchitiet(idHD,idCTHH,Price,soLuong)
            VALUES($idBill,$idCTSP,$price,$soLuong)
            ";
            pdo_execute($sql);
        }
        function getallBillofUSer($userID){
            $sql = "SELECT *,hoadon.status as 'STT',hoadon.countDL as 'checkDHL' FROM `hoadon` INNER JOIN users ON hoadon.userID=users.idUser WHERE hoadon.userID=$userID";
            return pdo_query($sql);
        }
        function getHDCT($idBill){
            $sql = "SELECT * FROM hoadonchitiet INNER JOIN chitietsanpham ON hoadonchitiet.idCTHH=chitietsanpham.idChitiet INNER JOIN bangdungluong ON chitietsanpham.maDungLuong=bangdungluong.idDungLuong INNER JOIN bangmau on chitietsanpham.maMau =bangmau.idMau INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd WHERE hoadonchitiet.idHD=$idBill";
            return pdo_query($sql);
        }
        function UDSTTHD($idHoaDon){
            $sql = "UPDATE hoadon SET status=6 WHERE idHoaDon=$idHoaDon";
            pdo_execute($sql);
        }
        function counShippingHD(){
            $sql = "SELECT * FROM hoadon WHERE status=3";
            return count(pdo_query($sql));
        }
        function BookedAgain($idHoaDon){
            $sql = "UPDATE hoadon SET status=0,countDL=1,maVanDon=NULL,ngayHoanHang=NULL WHERE idHoaDon=$idHoaDon";
            pdo_execute($sql);
        }
        function checkRebooked($idBill){
            $sql = "SELECT hoadon.countDL as 'checkRB' from hoadon WHERE idHoaDon=$idBill";
            return pdo_query($sql);
        }
    }
    class Users{
        function checkhUser($username){
            $sql ="SELECT * FROM users WHERE username='$username'";
            return count(pdo_query($sql));
        }
        function addUser($username,$fullName,$password2,$passReset,$email,$image,$status,$RoleID,$date){
            $sql = "INSERT INTO users(username,fullname,password,passReset,email,image,status,idRole,date)
            VALUES('$username','$fullName','$password2','$passReset','$email','$image',$status,$RoleID,'$date')
            ";
            pdo_execute($sql);
        }
        function checkLogin($username,$password){
            $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
            return count(pdo_query($sql));
        }
        function searchUser($username){
            $sql = "SELECT * FROM users WHERE username='$username'";
            return pdo_query($sql);
        }
        function getRoleID(){
            $sql = "SELECT * FROM role WHERE tenRole LIKE '%Khách hàng%'";
            return pdo_query($sql);
        }
        function UDUser1($username,$fullname,$password,$email,$userID,$date){
            $sql = "UPDATE users SET username='$username',fullname='$fullname',password='$password',email='$email',status=2,count=1,date='$date'WHERE idUser=$userID";
            pdo_execute($sql);
        }
        function UDUser2($username,$fullname,$password,$email,$userID,$date,$image){
            $sql = "UPDATE users SET username='$username',fullname='$fullname',password='$password',email='$email',image='$image',status=2,count=1,date='$date'WHERE idUser=$userID";
            pdo_execute($sql);
        }
        function searchUserEmail($username,$email){
            $sql = "SELECT * FROM  users WHERE username='$username' AND email='$email'";
            return pdo_query($sql);
        }
        function UDPASSFG($password2,$username){
            $sql = "UPDATE users SET password='$password2',count=0 WHERE username='$username'";
            pdo_execute($sql);
        }
    }
    class Product{
        function getSearchProduct($prodName){
            $sql = "SELECT * FROM sanpham WHERE tenSP like '%$prodName%' AND status=1";
            return pdo_query($sql);
        }
        function getSearchProductPT($prodName,$limit, $offset){
            $sql = "SELECT * FROM sanpham WHERE tenSP like '%$prodName%' AND status=1 limit $limit offset $offset";
            return pdo_query($sql);
        }
        function getAllSingleProduct($idCTSP){
            $sql ="SELECT * FROM `chitietsanpham` INNER JOIN sanpham ON chitietsanpham.idSP=sanpham.idProd INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong ON chitietsanpham.maDungLuong=bangdungluong.idDungLuong WHERE idChitiet=$idCTSP";
            return pdo_query($sql);
        }
        function getlatestProduct(){
            $sql = "SELECT * FROM sanpham WHERE status=1 ORDER BY date DESC LIMIT 8 ";
            return pdo_query($sql);
        }
        function getAllProduct(){
            $sql = "SELECT * FROM sanpham WHERE status=1 ORDER BY idThietBi DESC";
            return pdo_query($sql);
        }
        function getAllProductPT($conn,$offset,$limit){
            $sql = "SELECT * FROM sanpham WHERE status=1 limit $limit offset $offset";
            return mysqli_query($conn,$sql);
        }
        function getProductsOneBrand($idBrand){
            $sql = "SELECT * FROM sanpham WHERE status=1 AND idBrand=$idBrand ORDER BY idThietBi DESC";
            return pdo_query($sql);
        }
        function getProductsOneBrandPT($conn,$idBrand,$limit,$offset){
            $sql = "SELECT * FROM sanpham WHERE status=1 AND idBrand=$idBrand limit $limit offset $offset";
            return mysqli_query($conn,$sql);
        }
        function getProductsOneTB($idThietBi){
            $sql = "SELECT * FROM sanpham WHERE status=1 AND idThietBi=$idThietBi ORDER BY idThietBi DESC";
            return pdo_query($sql);
        }
        function getProductsOneTBPT($conn,$idThietBi,$limit,$offset){
            $sql = "SELECT * FROM sanpham WHERE status=1 AND idThietBi=$idThietBi limit $limit offset $offset";
            return mysqli_query($conn,$sql);
        }
        function getProductDetail($idProd){
            $sql = "SELECT *,sanpham.status as 'stt' FROM sanpham INNER JOIN thuonghieu ON sanpham.idBrand=thuonghieu.idBrand WHERE sanpham.idProd=$idProd";
            return pdo_query($sql);
        }
        function getSimilarProduct($idBrand,$idThietBi,$idProd){
            $sql = "SELECT * FROM sanpham WHERE idBrand=$idBrand AND idThietBi=$idThietBi AND idProd!=$idProd limit 4";
            return pdo_query($sql);
        }
        function getGallerySingProd($idProd){
            $sql = "SELECT * FROM prodgallery WHERE idProd=$idProd";
            return pdo_query($sql);
        }
        function getAllOptionSingleProduct($idProd){
            $sql = "SELECT * FROM `chitietsanpham` INNER JOIN bangmau ON chitietsanpham.maMau=bangmau.idMau INNER JOIN bangdungluong ON chitietsanpham.maDungLuong= bangdungluong.idDungLuong WHERE idSP=$idProd";
            return pdo_query($sql);
        }
        function getDetail($idChitiet){
            $sql = "SELECT * FROM `chitietsanpham` WHERE idChitiet=$idChitiet";
            return pdo_query($sql);
        }
        function getBestSaleProduct(){
            $sql = "SELECT * FROM sanpham WHERE status=1 ORDER BY sale DESC LIMIT 8  ";
            return pdo_query($sql);
        }
        function UDSEEN($idProd,$newseen){
            $sql ="UPDATE sanpham SET soLuotXem=$newseen WHERE idProd=$idProd";
            pdo_execute($sql);
        }
    }
    class Brand{
        function getAllBrand(){
            $sql ="SELECT * FROM thuonghieu";
            return pdo_query($sql);
        }
    }
    class storage{
        function getStorageInfoByName($tenKho){
            $sql = "SELECT * FROM khohang WHERE thongTin LIKE '$tenKho'";
            return pdo_query($sql);
        }
    }
    class ThietBi{
        function getAllThietBi(){
            $sql = "SELECT * FROM thietbi";
            return pdo_query($sql);
        }
    }

?>