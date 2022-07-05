<nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-category">Menu</li>
            <li class="nav-item">
              <a class="nav-link" href="index.php">
                <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
                <span class="menu-title">Trang chủ</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="icon-bg"><i class="mdi mdi-crosshairs-gps menu-icon"></i></span>
                <span class="menu-title">Sản phẩm</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="index.php?page=tb">Thiết bị</a></li>
                  <li class="nav-item"> <a class="nav-link" href="index.php?page=brand">Thương hiệu</a></li>
                  <li class="nav-item"> <a class="nav-link" href="index.php?page=dungluong">Dung lượng</a></li>
                  <li class="nav-item"> <a class="nav-link" href="index.php?page=product">Sản phẩm</a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=users">
                <span class="icon-bg"><i class="mdi mdi-format-list-bulleted menu-icon"></i></span>
                <span class="menu-title">Tài Khoản</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <span class="icon-bg"><i class="mdi mdi-lock menu-icon"></i></span>
                <span class="menu-title">Đơn hàng</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="index.php?page=bills">Xem </a></li>
                  <li class="nav-item"> <a class="nav-link" href="index.php?page=bills&&option=area1"> Tổng đơn </a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item sidebar-user-actions">
              <div class="user-details">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <div class="d-flex align-items-center">
                      <div class="sidebar-profile-img">
                        <img src="layout/assets/images/faces/1.jpg" alt="image">
                      </div>
                      <div class="sidebar-profile-text">
                        <p class="mb-1">Võ Lâm Đoan</p>
                      </div>
                    </div>
                  </div>
                  <div class="badge badge-danger">3</div>
                </div>
              </div>
            </li>
          </ul>
        </nav>