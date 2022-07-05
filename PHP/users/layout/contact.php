<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="robots" content="noindex, nofollow">
	<title>ATShop</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
	<link href="style.css" rel="stylesheet">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
	<link rel="preconnect" href="https:/fonts.gstatic.com">
	<link
		href="https:/fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,900&display=swap"
		rel="stylesheet">
	<!-- boxicons -->
	<link href='https:/unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- app css -->
	<link rel="stylesheet" href="users/layout/css/grid.css">
	<link rel="stylesheet" href="users/layout/css/app.css">
</head>

<body>
	<?php
        include 'users/layout/layout2/header.php';
       ?>
	<div class="main_contact">
		<div class="contactCol">
			<div class="container_chat">
				<div class="row justify-content-md-center mb-4">
					<div class="col-md-6">
						<!--start code-->
						<div class="card">
							<div class="card-body messages-box">
								<ul class="list-unstyled messages-list">
									<?php         
							
							if(mysqli_num_rows($res)>0){
								while($row=mysqli_fetch_assoc($res)){
									$message=$row['message'];
									$added_on=$row['added_on'];
									$strtotime=strtotime($added_on);
									$time=date('h:i A',$strtotime);
									$type=$row['type'];
									if($type=='user'){
										$class="messages-me";
										$name="Me";
                                        echo '<li class="'.$class.' clearfix"><span class="message-img"><img src="images/user_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">'.$name.'</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'.$time.'</span></small> </div><p class="messages-p">'.$message.'</p></div></li>';
									}else{
										$class="messages-you";
										$name="Chatbot";
                                        echo '<li class="'.$class.' clearfix"><span class="message-img"><img src="images/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">'.$name.'</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'.$time.'</span></small> </div><p class="messages-p">'.$message.'</p></div></li>';
									}
									
                                }
							}else{
                                $message="Hello. Tôi có thể giúp gì được cho bạn ?";
                                $name="Chatbot";
								?>
									<li class="messages-me clearfix start_chat">
									<li class="messages-you clearfix"><span class="message-img"><img
												src="images/bot_avatar.png" class="avatar-sm rounded-circle"></span>
										<div class="message-body clearfix">
											<div class="message-header"><strong
													class="messages-title"><?=$name?></strong> <small
													class="time-messages text-muted">0:00<span
														class="fas fa-time"></span> <span
														class="minutes"></span></small> </div>
											<p class="messages-p"><?=$message?></p>
										</div>
									</li>
									</li>
									<?php
							}
							?>

								</ul>
							</div>
							<div class="card-header">
								<div class="input-group-chat">
									<input id="input-me" type="text" name="messages" class="form-control input-sm"
										placeholder="Type your message here..." />
									<input style="height:40px" type="button" class="btn btn-primary" value="Send"
										onclick="send_msg()">
								</div>
							</div>
						</div>
						<!--end code-->
					</div>
				</div>
			</div>
		</div>
		<div class="contactCol">
			<form action="index.php?page=contact&&act=sendcontact" method="POST">
				<div class="dbl-field">
					<div class="field">
						<input type="text" id="fullNameCt" required name="name" placeholder="Enter your name">
						<i class='fas fa-user'></i>
					</div>
					<div class="field">
						<input type="text" id="emailCt" required name="email" placeholder="Enter your email">
						<i class='fas fa-envelope'></i>
					</div>
				</div>
				<div class="dbl-field">
					<div class="field">
						<input type="text" id="phoneCt" required name="phoneCt" placeholder="Enter your phone">
						<i class='fas fa-phone-alt'></i>
					</div>
				</div>
				<div class="message">
					<textarea placeholder="Write your message" required id="messageCt" name="message"></textarea>
					<i class="material-icons">Thông tin cần hỗ trợ</i>
				</div>
				<div class="button-area">
					<button type="submit" name="ContactSendBtn" id="ContactSendBtn">Gửi</button>
					<span></span>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function getCurrentTime() {
			var now = new Date();
			var hh = now.getHours();
			var min = now.getMinutes();
			var ampm = (hh >= 12) ? 'PM' : 'AM';
			hh = hh % 12;
			hh = hh ? hh : 12;
			hh = hh < 10 ? '0' + hh : hh;
			min = min < 10 ? '0' + min : min;
			var time = hh + ":" + min + " " + ampm;
			return time;
		}

		function send_msg() {
			jQuery('.start_chat').hide();
			var txt = jQuery('#input-me').val();
			var html =
				'<li class="messages-me clearfix"><span class="message-img"><img src="image/user_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Me</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">' +
				getCurrentTime() + '</span></small> </div><p class="messages-p">' + txt + '</p></div></li>';
			jQuery('.messages-list').append(html);
			jQuery('#input-me').val('');
			if (txt) {
				jQuery.ajax({
					url: 'users/model/get_bot_message.php',
					type: 'post',
					data: 'txt=' + txt,
					success: function (result) {
						var html =
							'<li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">' +
							getCurrentTime() + '</span></small> </div><p class="messages-p">' + result +
							'</p></div></li>';
						jQuery('.messages-list').append(html);
						jQuery('.messages-box').scrollTop(jQuery('.messages-box')[0].scrollHeight);
					}
				});
			}
			window.location.reload();
		}
	</script>
</body>

</html>