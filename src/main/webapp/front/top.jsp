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
		var iframe = parent.document.getElementById("mytopiframe");
		$(iframe).attr("height", height);
	});
</script>
</head>
<body>
	<!--网站顶部-->
	<div class="top">
		<div class="container">
			<div class="top-left">
				<p>欢迎来到超鲜网</p>
				<c:if test="${sessionScope.sessionvipuser.loginname==null }">
					<a href="vipusercontrl/prelogin" target="myiframe">请登录</a>
				</c:if>
				<c:if test="${sessionScope.sessionvipuser.loginname!=null }">
					<span>欢迎您: ${sessionScope.sessionvipuser.loginname }</span>

					<a href="vipusercontrl/prebasicmembeinfo" target="myiframe"
						id="vipcenter">会员中心</a>

				</c:if>
				<span>|</span> <a href="vuc/prereg" target="myiframe">免费注册</a>
			</div>
			<div class="top-right">
				<ul>
					<li><a href="javascript:;">帮助中心&nbsp;&nbsp;|</a></li>
					<li><a href="javascript:;">我的关注&nbsp;&nbsp;|</a></li>
					<li><a href="javascript:;">联系客服&nbsp;&nbsp;|</a></li>
					<li><a href="javascript:;">网站导航&nbsp;&nbsp;|</a></li>
					<li><a href="javascript:;">客服热线：<span>400-888-8888</span>&nbsp;&nbsp;|
					</a></li>
				</ul>
				<div class="attention">
					<p>关注我们：</p>
					<a class="weixin" href="javascript:;"> <img
						src="front/images/top-icon01.png" alt="" />
						<div class="weixin-erweima">
							<i></i> <img src="front/images/erweima.png" alt="" />
						</div>
					</a> <a class="xl" href="javascript:;"><img
						src="front/images/top-icon02.png" alt="" /></a> <a class="tx"
						href="javascript:;"><img src="front/images/top-icon03.png"
						alt="" /></a> <span>|</span>
				</div>
				<a class="version" href="javascript:;">English</a>
			</div>
		</div>
	</div>
	<!--网站头部-->
	<header>
		<div class="container">
			<a href="javascript:;" class="logo"> <img
				src="front/images/logo.png" alt="" />
			</a>
			<div class="search">
				<div class="search-form">
					<div class="input">
						<input type="text" />
					</div>
					<div class="button">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				<div class="search-list">
					<a class="selected" href="javascript:;">A级牛肉</a> <span>|</span> <a
						href="javascript:;">进口猪肉</a> <span>|</span> <a href="javascript:;">A级排骨肉</a>
					<span>|</span> <a href="javascript:;">A级牛肉</a> <span>|</span> <a
						href="javascript:;">进口猪肉</a> <span>|</span> <a class="selected"
						href="javascript:;">A级排骨肉</a>
				</div>
			</div>
			<div class="cart">
				购物车中<span>0</span>件
			</div>
		</div>
	</header>
	<!--网站导航-->
	<nav>
		<div class="container">
			<!--  遍历输出菜单-->
			<dl>
				<dt>
					<a class="pro-all" href="javascript:;">商品全部分类&nbsp;&nbsp;<i
						class="fa fa-sort-desc fa-caret-up"></i></a>
					<ul>
						<c:forEach items="${menulist }" var="firstmenu">
							<c:if test="${firstmenu.parentid==0 }">

								<li class="pro-sort">
									<div class="sort-first">
										<i class="fa fa-caret-right"></i> <a class="tit" href="">${firstmenu.menuName }</a>
										<div class="con">

											<c:forEach items="${menulist }" var="secondmenu">
												<c:if test="${secondmenu.parentid==firstmenu.menuid }">
													<a href="">${secondmenu.menuName }</a>
												</c:if>
											</c:forEach>

										</div>
									</div>
									<div class="sort-second">
										<c:forEach items="${menulist }" var="secondmenu">
											<c:if test="${secondmenu.parentid==firstmenu.menuid }">
												<div class="second-list">
													<a class="second-tit" href="">${secondmenu.menuName }<i
														class="fa fa-angle-right"></i></a>
													<div class="second-con">
														<c:forEach items="${menulist }" var="thirdmenu">
															<c:if test="${thirdmenu.parentid==secondmenu.menuid }">
																<span>|</span>
																<a href="">${thirdmenu.menuName }</a>
															</c:if>
														</c:forEach>
													</div>
												</div>
											</c:if>
										</c:forEach>

										<a class="second-add" href=""><img
											src="${firstmenu.menuImage }" alt="" /></a>
									</div>
								</li>
							</c:if>
						</c:forEach>
					</ul>
				</dt>
				<dd>
					<a class="selected" href="javascript:;">首页</a>
				</dd>
				<dd>
					<a href="javascript:;">资源</a>
				</dd>
				<dd>
					<a href="javascript:;">采购</a>
				</dd>
				<dd>
					<a href="javascript:;">搜索</a>
				</dd>
				<dd>
					<a href="javascript:;">物流</a>
				</dd>
				<dd>
					<a href="javascript:;">行情</a>
				</dd>
				<dd>
					<a href="javascript:;">积分商城</a>
				</dd>
				<dd>
					<a href="javascript:;">会员俱乐部</a>
				</dd>
			</dl>
		</div>
	</nav>

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