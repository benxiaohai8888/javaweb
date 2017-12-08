<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>基本会员-基本信息</title>
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

		//var height = document.documentElement.offsetHeight?document.documentElement.offsetHeight:document.body.offsetHeight;
		var height = document.documentElement.offsetHeight
				|| document.body.offsetHeight;
		//alert(height);
		var rightframe = parent.document.getElementById("rightframe");
		$(rightframe).attr("height", height);

		var mainframe = parent.parent.document.getElementById("myiframe");
		var parentheight = parent.document.documentElement.offsetHeight;
		$(mainframe).attr("height", parentheight);

	});
</script>
</head>
<body>

	<!-- 会员右侧 -->
	<div class="member-right">
		<div class="member-main">
			<div class="member-column">
				<div class="member-tit">
					<p>升级供应商</p>
				</div>
				<div class="member-con">
					<div class="attest">
						<a href="companyvipcontrl/preupgradeprovidercom" class="attest01">
							<img src="front/images/upgrade-icon05.png" alt="">
						</a> <a href="personalvipcontrl/preupgradeproviderperson"
							class="attest02"> <img src="front/images/upgrade-icon06.png"
							alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--网站底部-->
	<script type="text/javascript" src="front/js/select.js"></script>
	<!--图片上传预览插件  -->
	<script type="text/javascript" src="front/js/uploadPreView.js"></script>
	<script type="text/javascript">
		$(function() {

			//加载省份
			$.post("provincecontrl/findallprovince", {}, function(data) {
				$.each(data, function(i, n) {
					$("#province").append(
							"<option value='"+n.provinceid+"'>" + n.province
									+ "</option>");
				});
			}, "json");
			//根据省编号查询城市
			$("#province").change(
					function() {
						$("#city").find("option").remove();
						$("#area").find("option").remove();
						$("#city").append("<option>请选择</option>");
						$("#area").append("<option>请选择</option>");

						$.post("citycontrl/findcitybyfather", {
							father : $("#province").val()
						}, function(data) {
							$.each(data, function(i, n) {
								$("#city").append(
										"<option value='"+n.cityid+"'>"
												+ n.city + "</option>");
							});
						}, "json");
					});
			//根据城市编号查询地区
			$("#city").change(
					function() {
						$("#area").find("option").remove();
						$("#area").append("<option>请选择</option>");
						$.post("areacontrl/findaerabyfather", {
							father : $("#city").val()
						}, function(data) {
							$.each(data, function(i, n) {
								$("#area").append(
										"<option value='"+n.id+"'>" + n.area
												+ "</option>");
							});
						}, "json");
					});
			//图片上传预览
			new uploadPreview({
				UpBtn : "pic",
				DivShow : "imgdiv",
				ImgShow : "imgshow"
			});

		});
		function chooseImage() {
			$("#pic").click();
		}
	</script>
</body>
</html>