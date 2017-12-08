<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<meta charset="UTF-8">
<base href="<%=basepath%>" />
<title>超鲜网-首页</title>
<link rel="stylesheet" href="front/css/member.css" />
<link rel="stylesheet" href="front/css/index.css" />
<link rel="stylesheet" href="front/css/public.css" />
<link rel="stylesheet" href="front/css/banner.css" />
<link rel="stylesheet" href="front/css/tab.css" />
<link rel="stylesheet" href="front/css/table.css" />
<link rel="stylesheet" href="front/css/select.css">
<link rel="stylesheet" href="front/css/font-awesome.min.css">
<link rel="stylesheet" href="front/css/font-awesome-ie7.css">
<!--[if lt IE 10]>
    <script src="front/js/html5shiv.min.js"></script>
    <![endif]-->

<script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		//获取窗口的高度
		var height = document.documentElement.offsetHeight;
		//获取父页面的iframe
		var iframe = parent.document.getElementById("myfootiframe");
		$(iframe).attr("height", height);
	});
</script>
</head>
<body>


	<!--网站底部-->
	<footer>
		<div class="footer-top">
			<div class="container">
				<div class="footer-left">
					<div class="footer-logo">
						<img src="front/images/logo.png" alt="" />
					</div>
					<div class="footer-tel">
						<h6>服务热线：</h6>
						<p>400-888-8888</p>
					</div>
				</div>
				<div class="footer-nav">
					<dl
						style="background: url(front/images/footer-icon01.png) no-repeat top left;">
						<dt>
							<a href="javascript:;">购物指南</a>
						</dt>
						<dd>
							<a href="">购物流程</a><a href="">订货方式</a><a href="">联系客服</a><a
								href="">交易条款</a>
						</dd>
					</dl>
					<dl
						style="background: url(front/images/footer-icon02.png) no-repeat top left;">
						<dt>
							<a href="javascript:;">支付方式</a>
						</dt>
						<dd>
							<a href="">银行付款</a><a href="">在线支付</a><a href="">组合支付</a>
						</dd>
					</dl>
					<dl
						style="background: url(front/images/footer-icon03.png) no-repeat top left;">
						<dt>
							<a href="javascript:;">物流帮助</a>
						</dt>
						<dd>
							<a href="">如何找车</a><a href="">常见问题</a><a href="">运送流程</a>
						</dd>
					</dl>
					<dl
						style="background: url(front/images/footer-icon04.png) no-repeat top left;">
						<dt>
							<a href="javascript:;">售后服务</a>
						</dt>
						<dd>
							<a href="">售后服务总则</a><a href="">服务政策</a>
						</dd>
					</dl>
					<dl
						style="background: url(front/images/footer-icon05.png) no-repeat top left;">
						<dt>
							<a href="javascript:;">帮助中心</a>
						</dt>
						<dd>
							<a href="">网点分布</a><a href="">加盟商区</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div class="copy">
			<div class="copy-nav">
				<a href="javascript:;">关于我们</a> <span>|</span> <a
					href="javascript:;">法律声明</a> <span>|</span> <a href="javascript:;">诚聘英才</a>
				<span>|</span> <a href="javascript:;">联系我们</a> <span>|</span> <a
					href="javascript:;">友情链接</a>
			</div>
			<p>
				Copyright <i class="fa fa-copyright"></i> 超鲜网 粤ICP备 13013915号-3
				ICP证：粤B2-201401448
			</p>
		</div>
	</footer>
	<!-- 右侧悬浮菜单 -->
	<ul class="right-fixed">
		<li class="icon01"><a href="javascript:;"> <em></em>
				<p>在线客服</p>
		</a></li>
		<li class="icon02"><a href="javascript:;"> <em></em>
				<p>官方微博</p>
				<div class="maskMenu">
					<img src="front/images/erweima.jpg" alt="">
				</div>
		</a></li>
		<li class="icon03"><a href="javascript:;"> <em></em>
				<p>客服电话</p>
		</a></li>
		<li class="returnTop"><a href="javascript:;"> <em></em>
		</a></li>
	</ul>
	<script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="front/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript"
		src="front/js/jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript"
		src="front/js/animateBackground-plugin.js"></script>
	<script type="text/javascript" src="front/js/global.js"></script>
	<script type="text/javascript" src="front/js/jquery.accordion.js"></script>
	<script type="text/javascript" src="front/js/es5-shim.js"></script>
	<script type="text/javascript" src="front/js/select.js"></script>
	<script type="text/javascript">
		jQuery("#bannerIndex").slide({
			mainCell : ".bd ul",
			autoPlay : true
		});
		jQuery(".banner-quotes01").each(function() {
			$(this).slide({
				mainCell : ".bd ul",
				autoPlay : false
			});
		});
		jQuery(".banner-quotes02").each(function() {
			$(this).slide({
				mainCell : ".bd ul",
				autoPlay : false
			});
		});
		jQuery(".txtScroll-top").slide({
			titCell : ".hd ul",
			mainCell : ".bd ul",
			autoPage : true,
			effect : "top",
			autoPlay : true,
			vis : 13
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$('dl#my-accordion').accordion({
				open : true
			});
		});
	</script>
</body>
</html>