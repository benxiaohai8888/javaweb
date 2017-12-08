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
					<a href="javascript:;" style="color: #e42122;">说明：认证过其他级别后，已经提交的信息自动读取过来不需要填写第二次</a>
				</div>
				<form action="personalvipcontrl/upgradeproviderandbuyers"
					method="post" enctype="multipart/form-data">
					<div class="member-con">
						<div class="member-subtit">基本信息填写</div>
						<div class="controls">
							<p>
								<span>*</span>真实姓名：
							</p>
							<input type="text" class="input03 w250" name="realname">
						</div>
						<div class="controls">
							<p>
								<span>*</span>身份证号：
							</p>
							<input type="text" class="input03 w250" name="card">
						</div>
						<div class="controls">
							<p>
								<span>*</span>身份证照片：
							</p>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="imgDiv">
									<img src="front/images/upload-img02.png" alt="" id="imgShow">
								</div>
								<input type="button" value="点击上传" class="upload-btn w148"
									id="upbtn"> <input type="file" id="cpic"
									style="display: none;" name="cpic" />
							</div>
							<div class="tip">
								<em>请上传身份证正面带有头像的照片</em> <em>1.上传文件要求为扫描件或清洗照片；</em> <em>2.照片要求格式为jpg、jpeg、gif或png，大小不要超过3M。</em>
							</div>
						</div>
						<div class="controls">
							<p>
								<span>*</span>联系地址：
							</p>
							<input type="text" class="input03 w450" name="address">
						</div>
						<div class="member-subtit">联系信息填写</div>
						<div class="controls">
							<p>
								<span>*</span>手机号码：
							</p>
							<input type="text" class="input03 w250" name="mobile">
						</div>
						<div class="controls">
							<p>
								<span>*</span>电子邮箱：
							</p>
							<input type="text" class="input03 w250" name="email">
						</div>
						<div class="controls">
							<p>
								<span>*</span>单位座机：
							</p>
							<input type="text" class="input03 w65">
							<div class="controls-lines">-</div>
							<input type="text" class="input03 w170" name="table_phone">
						</div>
						<div class="controls">
							<div class="provision">
								<input type="checkbox">
								<div class="provision-tip">
									我已阅读并统一《<a href="javascript:;">供应商注册协议</a>》
								</div>
							</div>
						</div>
						<input type="hidden" value="供应商" name="style" /> <input
							type="submit" value="立即申请" class="btn01 submit w155">
					</div>
				</form>
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
			//身份证图片上传预览
			new uploadPreview({
				UpBtn : "cpic",
				DivShow : "imgDiv",
				ImgShow : "imgShow"
			});

			//点击上传身份证按钮
			$("#upbtn").click(function() {
				$("#cpic").click();
			});

		});
	</script>
</body>
</html>