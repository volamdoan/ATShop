
<div class="Logincontainer">
    <div class="title">Account Manager</div>
    <div class="content">
        <form action="index.php?page=account&&act=editAccount" method="post" enctype="multipart/form-data">
            <?php
                foreach ($userDetail as  $value) {?>
                     <div class="user-details">
                <div class="input-box">
                    <span class="details">Full Name</span>
                    <input type="text" name="fullname"  value="<?=$value['fullname']?>" placeholder="Enter your name" required>
                </div>
                <div class="input-box">
                    <span class="details">Username</span>
                    <input type="text" name="username"   value="<?=$value['username']?>" placeholder="Enter your username" required>
                </div>
                <div style="width:100%" class="input-box">
                    <span class="details">Email</span>
                    <input type="text" name="email" value="<?=$value['email']?>" pattern="[\w\.-]+@[\w\.-]+" placeholder="Enter your email" required>
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input type="password" name="password"  placeholder="Enter your password" required>
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input type="password" name="repass"  placeholder="Enter your password" required>
                </div>
            </div>
            <input type="file"  name="image">
            <?php    }
            ?>
          
            <div class="button">
                <input style="margin-left:50%" type="submit" name="submitEdiTAccount" value="Thay đổi">
            </div>
        </form>
    </div>
</div>