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
<title>超鲜网-注册成功</title>
<link rel="stylesheet" href="front/css/public.css" />
<link rel="stylesheet" href="front/css/page.css" />
<link rel="stylesheet" href="front/css/member.css" />
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
				class="fa fa-angle-double-right"></i></span> <a href="javascript:;">注册</a>
			<span><i class="fa fa-angle-double-right"></i></span> <a
				href="javascript:;" class="selected">填写信息</a>
		</div>
		<div class="content-reg">
			<!-- 内页标题 -->
			<div class="reg-tit">
				<p>用户注册</p>
				<!-- 注册进度 -->
				<div class="reg-progress">
					<span>填写信息</span> <i class="fa fa-angle-double-right"></i> <span
						class="selected">注册成功</span>
				</div>
			</div>
			<!-- 注册表单 -->
			<div class="reg-form">
				<!-- 注册成功 -->
				<div class="reg-suc">
					<h6>
						${vipuser.loginname },恭喜您注册成功!<i class="fa fa-check-circle-o"></i>
					</h6>
					<p>您的手机:${vipuser.mobile }也可作为登录账号，用于登录</p>
					<div class="reg-btn">
						<a href="vipusercontrl/personalcenter?userid=${vipuser.userid }"
							class="reg-person">个人中心>></a>
					</div>
					<p style="border-top: 1px solid #dfdfdf;">马上去完成资料，认证为专属会员，享受更多尊贵权限</p>
					<div class="reg-btn">
						<a href="vipusercontrl/authentication?userid=${vipuser.userid }"
							class="btn04 w250">去认证</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="front/js/js/global.js"></script>
	<script type="text/javascript" src="front/js/js/jquery.accordion.js"></script>
	<script type="text/javascript" src="front/js/js/select.js"></script>
</body>
</html>