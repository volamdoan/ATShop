<div class="Logincontainer">
<div class="LoginArea">
    <div class="loginCol">
        <?php
            if(isset($image)&&$image!=''){?>
              <img style="width:95%" src="<?=$imageUser.$image?>" alt="">  
        <?php    }
        ?>
    </div>
    <div class="loginCol">
        <form action="index.php?page=login&&act=login"  method="post">
            <div class="loginContent">
            <input type="text" name="username" required value="<?php if(isset($_COOKIE['user'])){echo $_COOKIE['user'];}?>" placeholder="Username">
            <input class="input-text" required name="password" type="password" value="<?php if(isset($_COOKIE['password'])){echo $_COOKIE['password'];}?>" placeholder="Password">    
            </div><br>
                <label style="cursor:pointer" >
                <input  type="checkbox" name="remember" id=""> Ghi nhớ
            </label>

            <br>
            <div style="margin-top:7%" class="loginContent">
                <button name="loginBtn" type="submit">Đăng nhập</button>
                <a href="index.php?page=login&&option=register">Đăng ký</a>
            </div>
        </form><br>
        <?php
            if(isset($image)&&$image!=''){?>
                <a style="margin-bottom:5%;color:red;font-weight:bold" href="index.php?page=login&&option=forget">Quên mật khẩu ?</a>
            <?php }?>
    </div>
</div>
</div>