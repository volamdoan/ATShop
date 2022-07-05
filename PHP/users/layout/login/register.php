<div class="Logincontainer">
    <div class="title">Registration</div>
    <div class="content">
        <form action="index.php?page=login&&act=register" method="post" enctype="multipart/form-data">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Full Name</span>
                    <input type="text" name="fullname" placeholder="Enter your name" required>
                </div>
                <div class="input-box">
                    <span class="details">Username</span>
                    <input type="text" name="username"  placeholder="Enter your username" required>
                </div>
                <div style="width:100%" class="input-box">
                    <span class="details">Email</span>
                    <input type="text" name="email" pattern="[\w\.-]+@[\w\.-]+" placeholder="Enter your email" required>
                </div>
                <div style="margin-top: 2%">
                <input name="image" required type="file">
                </div>
            </div>
            <div class="button">
                <button style="background: linear-gradient(135deg, #71b7e6, #9b59b6);outline:none;border:none;color:white;font-weight:bold" name="registerBtn">Đăng ký</button>
                <a href="index.php?page=login&&option=login">Đăng nhập</a>
            </div>
        </form>
    </div>
</div>