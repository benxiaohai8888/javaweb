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
			<form action="companyvipcontrl/upgradeproviderandbuyers" method="post"
				enctype="multipart/form-data">

				<div class="member-column">
					<div class="member-tit">
						<p>升级供应商</p>
						<a href="javascript:;" style="color: #e42122;">说明：认证过其他级别后，已经提交的信息自动读取过来不需要填写第二次</a>
					</div>
					<div class="member-con">
						<div class="member-subtit">基本信息填写</div>
						<div class="controls">
							<p>
								<span>*</span>公司名称：
							</p>
							<input type="text" class="input03 w450" name="companyName">
						</div>
						<div class="controls">
							<p>
								<span>*</span>所在地：
							</p>
							<select class="w146" id="province" name="province">
								<option value="0">请选择</option>

							</select> <select class="w146" id="city" name="city">
								<option value="0">请选择</option>

							</select> <select class="w146" id="area" name="area">
								<option value="0">请选择</option>

							</select>
						</div>
						<div class="controls">
							<p>
								<span>*</span>详细地址：
							</p>
							<input type="text" class="input03 w450" name="address">
						</div>
						<div class="controls">
							<p>
								<span>*</span>证件上传：
							</p>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="licensePicImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="licensePicImgShow">
								</div>
								<input type="button" value="点击上传营业执照" class="upload-btn w148"
									id="licensePicBtn"> <input type="file" id="licensePic"
									style="display: none;" name="licpic" />
							</div>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="orgnaizationPicImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="orgnaizationPicImgShow">
								</div>
								<input type="button" value="组织机构代码" class="upload-btn w148"
									id="orgnaizationPicBtn"> <input type="file"
									id="orgnaizationPic" style="display: none;" name="orgPic" />
							</div>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="taxPicImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="taxPicImgShow">
								</div>
								<input type="button" value="税务登记证" class="upload-btn w148"
									id="taxPicBtn"> <input type="file" id="taxPic"
									style="display: none;" name="tPic" />
							</div>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="officePicImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="officePicImgShow">
								</div>
								<input type="button" value="办公场所图片" class="upload-btn w148"
									id="officePicBtn"> <input type="file" id="officePic"
									style="display: none;" name="offPic" />
							</div>

							<div class="upload-controls">
								<div class="upload-img sfz-img" id="foodPicImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="foodPicImgShow">
								</div>
								<input type="button" value="食品流通许可证" class="upload-btn w148"
									id="foodPicBtn"> <input type="file" id="foodPic"
									style="display: none;" name="foPic" />
							</div>
							<div class="member-tips">需加盖公章、清晰无涂抹的jpg格式文件(文件大小最大3M。也支持gif/png格式，但建议转换为jpg后再上传)
							</div>
						</div>
						<div class="controls">
							<p>
								<span>*</span>其他证件上传：
							</p>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="otherPic01ImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="otherPic01ImgShow">
								</div>
								<input type="button" value="上传图片" class="upload-btn w148"
									id="otherPic01Btn"> <input type="file" id="otherPic01"
									style="display: none;" name="othPic01" />
							</div>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="otherPic02ImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="otherPic02ImgShow">
								</div>
								<input type="button" value="上传图片" class="upload-btn w148"
									id="otherPic02Btn"> <input type="file" id="otherPic02"
									style="display: none;" name="othPic02" />
							</div>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="otherPic03ImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="otherPic03ImgShow">
								</div>
								<input type="button" value="上传图片" class="upload-btn w148"
									id="otherPic03Btn"> <input type="file" id="otherPic03"
									style="display: none;" name="othPic03" />
							</div>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="otherPic04ImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="otherPic04ImgShow">
								</div>
								<input type="button" value="上传图片" class="upload-btn w148"
									id="otherPic04Btn"> <input type="file" id="otherPic04"
									style="display: none;" name="othPic04" />
							</div>
							<div class="upload-controls">
								<div class="upload-img sfz-img" id="otherPic05ImgDiv">
									<img src="front/images/upload-img02.png" alt=""
										id="otherPic05ImgShow">
								</div>
								<input type="button" value="上传图片" class="upload-btn w148"
									id="otherPic05Btn"> <input type="file" id="otherPic05"
									style="display: none;" name="othPic05" />
							</div>
						</div>
						<div class="controls">
							<p>
								<span>*</span>企业法人姓名：
							</p>
							<input type="text" class="input03 w250" name="boosName">
						</div>
						<div class="member-subtit">授权运营者信息填写</div>
						<div class="controls">
							<p>
								<span>*</span>运营者姓名：
							</p>
							<input type="text" class="input03 w250" name="operatorName">
						</div>
						<div class="controls">
							<p>
								<span>*</span>运营者职务：
							</p>
							<input type="text" class="input03 w250" name="operatorJob">
						</div>
						<div class="controls">
							<p>
								<span>*</span>运营者联系方式：
							</p>
							<input type="text" class="input03 w250" name="operatorPhone">
						</div>
						<div class="controls">
							<div class="member-tips">授权运营书：请下载授权运营书按要求填写表格后，上传加盖公章的扫描件支持.jpg
								.jpeg .bmp .gif格式照片，大小不超过2M。</div>
							<div class="warrant-btn">
								<a href="javascript:;" class="btn01 w125">下载授权书</a> <a
									href="javascript:;" class="btn01 w125">上传授权书</a>
							</div>
						</div>
						<div class="controls">
							<div class="provision">
								<input type="checkbox">
								<div class="provision-tip">
									我已阅读并统一《<a href="javascript:;">供应商注册协议</a>》
								</div>
							</div>
						</div>
						<input type="submit" value="提交审核" class="btn01 submit w155">
					</div>
				</div>

				<input type="hidden" id="style" name="style" value="供应商" />
			</form>
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
			//营业执照图片上传预览
			new uploadPreview({
				UpBtn : "licensePic",
				DivShow : "licensePicImgDiv",
				ImgShow : "licensePicImgShow"
			});

			//点击上传营业执照按钮
			$("#licensePicBtn").click(function() {
				$("#licensePic").click();
			});

			//组织机构代码图片上传预览
			new uploadPreview({
				UpBtn : "orgnaizationPic",
				DivShow : "orgnaizationPicImgDiv",
				ImgShow : "orgnaizationPicImgShow"
			});

			//点击上传组织机构代码按钮
			$("#orgnaizationPicBtn").click(function() {
				$("#orgnaizationPic").click();
			});

			//税务登记证图片上传预览
			new uploadPreview({
				UpBtn : "taxPic",
				DivShow : "taxPicImgDiv",
				ImgShow : "taxPicImgShow"
			});

			//点击上传税务登记证按钮
			$("#taxPicBtn").click(function() {
				$("#taxPic").click();
			});

			//办公场所图片上传预览
			new uploadPreview({
				UpBtn : "officePic",
				DivShow : "officePicImgDiv",
				ImgShow : "officePicImgShow"
			});

			//点击上传办公场所图片按钮
			$("#officePicBtn").click(function() {
				alert(1);
				$("#officePic").click();
			});

			//食品流通许可证上传预览
			new uploadPreview({
				UpBtn : "foodPic",
				DivShow : "foodPicImgDiv",
				ImgShow : "foodPicImgShow"
			});

			//点击上传食品流通许可证按钮
			$("#foodPicBtn").click(function() {
				$("#foodPic").click();
			});

			//其它证件1上传预览
			new uploadPreview({
				UpBtn : "otherPic01",
				DivShow : "otherPic01ImgDiv",
				ImgShow : "otherPic01ImgShow"
			});

			//点击上传其它证件1按钮
			$("#otherPic01Btn").click(function() {
				$("#otherPic01").click();
			});

			//其它证件2上传预览
			new uploadPreview({
				UpBtn : "otherPic02",
				DivShow : "otherPic02ImgDiv",
				ImgShow : "otherPic02ImgShow"
			});

			//点击上传其它证件2按钮
			$("#otherPic02Btn").click(function() {
				$("#otherPic02").click();
			});

			//其它证件3上传预览
			new uploadPreview({
				UpBtn : "otherPic03",
				DivShow : "otherPic03ImgDiv",
				ImgShow : "otherPic03ImgShow"
			});

			//点击上传其它证件3按钮
			$("#otherPic03Btn").click(function() {
				$("#otherPic03").click();
			});

			//其它证件4上传预览
			new uploadPreview({
				UpBtn : "otherPic04",
				DivShow : "otherPic04ImgDiv",
				ImgShow : "otherPic04ImgShow"
			});

			//点击上传其它证件4按钮
			$("#otherPic04Btn").click(function() {
				$("#otherPic04").click();
			});

			//其它证件5上传预览
			new uploadPreview({
				UpBtn : "otherPic05",
				DivShow : "otherPic05ImgDiv",
				ImgShow : "otherPic05ImgShow"
			});

			//点击上传其它证件5按钮
			$("#otherPic05Btn").click(function() {
				$("#otherPic05").click();
			});
		});
	</script>
</body>
</html>