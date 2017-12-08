<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
<base href="<%=basepath%>" />
<meta charset="UTF-8">
<title>超鲜网-登录页</title>
<link rel="stylesheet" href="front/css/public.css" />
<link rel="stylesheet" href="front/css/page.css" />
<link rel="stylesheet0`" href="front/css/member.css" />
<link rel="stylesheet" href="front/css/banner.css" />
<link rel="stylesheet" href="front/css/tab.css" />
<link rel="stylesheet" href="front/css/table.css" />
<link rel="stylesheet" href="front/css/select.css">
<link rel="stylesheet" href="front/css/font-awesome.min.css">
<link rel="stylesheet" href="front/css/font-awesome-ie7.css">
<!--[if lt IE 10]>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		//获取窗口的高度
		var height = document.documentElement.offsetHeight;
		//获取父页面的iframe
		var iframe = parent.document.getElementById("myiframe");
		$(iframe).attr("height", height);
	});
</script>
</head>
<body>

	<div class="container">
		<!-- 面包屑导航 -->
		<div class="bread-crumbs">
			<a href="javascript:;">首页</a> <span><i
				class="fa fa-angle-double-right"></i></span> <a href="javascript:;"
				class="selected">登录</a>
		</div>
		<div class="content-reg">
			<!-- 登录表单 -->
			<div class="login-form">
				<!-- 登录左 -->
				<div class="login-left">
					<img src="front/images/login-pic.png" alt="">
				</div>
				<!-- 登录右 -->
				<div class="login-right">
					<form action="vipusercontrl/login" method="post" id="loginform">
						<div class="controls">
							<div class="login-controls">
								<p>用户名：</p>
								<div class="login-tools">
									未注册用户<i class="fa fa-angle-double-right"></i> <a
										href="vuc/prereg">注册</a>
								</div>
							</div>
							<input type="text" class="input03 w400" name="loginname">
						</div>
						<div class="controls">
							<div class="login-controls">
								<p>密码：</p>
								<div class="login-tools">
									<a href="javascript:;">忘记密码</a>
								</div>
							</div>
							<input type="text" class="input03 w400" name="loginpwd">
						</div>
						<div class="controls">
							<div class="login-controls">
								<p>验证码：</p>
							</div>
							<input type="text" class="input03 w250" name="code"> <img
								src="cc/code" alt="" class="code-img" id="imageCode"> <a
								href="javascript:;" onclick="changeImage(this);"
								class="code-change">换一张</a>
						</div>
						<div class="controls">
							<input type="button" value="登录" class="btn07 w400" id="loginbtn">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="front/js/global.js"></script>
	<script type="text/javascript" src="front/js/jquery.accordion.js"></script>
	<script type="text/javascript" src="front/js/select.js"></script>

	<script type="text/javascript" src="front/js/jquery.form.js"></script>
	<script type="text/javascript">
		/* 刷新验证码 */
		function changeImage(obj) {
			$('#imageCode').attr("src",
					"cc/code?timestamp=" + (new Date()).valueOf());
		}
		//登录
		$(function() {
			$("#loginbtn").click(function() {

				var form = new FormData(document.getElementById("loginform"));
				$.ajax({
					url : "vipusercontrl/login",
					type : "post",
					data : form,
					processData : false,
					contentType : false,
					success : function(data) {
						if (data == 0) {
							alert("验证码不正确");
						} else if (data == 1) {
							alert("账号或密码不正确");
						} else {
							window.location.href = "firstpage";
							//parent.location.reload();
						}

					},
					error : function(e) {
						alert("服务器错误！！");
						window.clearInterval(timer);
					}
				});

			});
		});
	</script>
</body>
</html>
