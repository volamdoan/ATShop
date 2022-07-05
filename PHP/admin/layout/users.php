<div class="main_container">
<nav class="navbar navbar-expand-lg navbar-light bg-dark menu2">
    <form class="form-inline">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    </form>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <div class="mr-auto"></div>
      <ul class="navbar-nav my-2 my-lg-0">
        <li class="nav-item active">
          <a class="nav-link" style="color:white" href="index.php?page=users">Tài khoản <span
              class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:white" href="#" id="navbarDropdown" role="button"
            data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Tùy chọn
          </a>
          <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <h6 class="dropdown-header">Menu</h6>
            <a class="dropdown-item " href="index.php?page=users&&option=usersmanagement">Tất cả</a>
            <a class="dropdown-item " href="index.php?page=users&&option=role">Quản lý Role</a>
            <a class="dropdown-item " href="index.php?page=users&&option=usersmanagement">Quản lý Tài khoản</a>
            <a class="dropdown-item " href="index.php?page=users&&option=addUser">Thêm tài khoản</a>
            
          </div>

        </li>

      </ul>

    </div>
  </nav>
  <?php
    $option='';
    if(isset($_GET['option'])){
        $option = $_GET['option'];
    }else{
        $option='usersmanagement';
    }
    switch ($option) {
        case 'role':
            include 'layout/role.php';
            break;
        case 'usersmanagement':
            include "layout/usersmanagement.php";
            break;
        case 'addUser':
            include 'layout/addUser.php';
            break;
        default:
            # code...
            break;
    }
  ?>
</div>
