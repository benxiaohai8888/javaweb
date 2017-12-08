package cn.yxl.bx.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.yxl.bx.pojo.CompanyVip;
import cn.yxl.bx.pojo.VipUser;
import cn.yxl.bx.service.ICompanyVipService;
import cn.yxl.bx.utls.PicUploadUtil;

@Controller
@RequestMapping("companyvipcontrl")
public class CompanyVipController {
	@Autowired
	private ICompanyVipService companyVipService;

	/**
	 * 升级供应商预处理
	 */
	@RequestMapping("preupgradeprovider")
	public String preUpgradeProvider() {

		return "front/vipusercenter/right/provider";

	}

	/**
	 * 升级供应商预处理(以公司身份)
	 */
	@RequestMapping("preupgradeprovidercom")
	public String preUpgradeProviderCom() {

		return "front/vipusercenter/right/provider_company";

	}

	/**
	 * 升级供应商,采购商
	 */
	@RequestMapping("upgradeproviderandbuyers")
	public String upgradeProviderAndBuyers(CompanyVip companyvip,
			@RequestParam MultipartFile licpic,
			@RequestParam MultipartFile orgPic,
			@RequestParam MultipartFile tPic,
			@RequestParam MultipartFile offPic,
			@RequestParam MultipartFile foPic,
			@RequestParam MultipartFile othPic01,
			@RequestParam MultipartFile othPic02,
			@RequestParam MultipartFile othPic03,
			@RequestParam MultipartFile othPic04,
			@RequestParam MultipartFile othPic05, HttpServletRequest request,
			Model model) {
		if (licpic.isEmpty() || orgPic.isEmpty() || tPic.isEmpty()
				|| offPic.isEmpty() || foPic.isEmpty() || othPic01.isEmpty()
				|| othPic02.isEmpty() || othPic03.isEmpty()
				|| othPic04.isEmpty() || othPic05.isEmpty()) {
			return "front/vipusercenter/right/provider_company";
		}
		String licpicpath = PicUploadUtil.upload(licpic, request);
		String orgPicpath = PicUploadUtil.upload(orgPic, request);
		String tPicpath = PicUploadUtil.upload(tPic, request);
		String offPicpath = PicUploadUtil.upload(offPic, request);
		String foPicpath = PicUploadUtil.upload(foPic, request);
		String othPic01path = PicUploadUtil.upload(othPic01, request);
		String othPic02path = PicUploadUtil.upload(othPic02, request);
		String othPic03path = PicUploadUtil.upload(othPic03, request);
		String othPic04path = PicUploadUtil.upload(othPic04, request);
		String othPic05path = PicUploadUtil.upload(othPic05, request);

		VipUser vuser = (VipUser) request.getSession().getAttribute(
				"sessionvipuser");

		companyvip.setLicensePic(licpicpath);
		companyvip.setOrgnaizationPic(orgPicpath);
		companyvip.setTaxPic(tPicpath);
		companyvip.setOfficePic(offPicpath);
		companyvip.setFoodPic(foPicpath);
		companyvip.setOtherPic01(othPic01path);
		companyvip.setOtherPic02(othPic02path);
		companyvip.setOtherPic03(othPic03path);
		companyvip.setOtherPic04(othPic04path);
		companyvip.setOtherPic05(othPic05path);
		//
		companyvip.setVipUsers(vuser);
		companyvip.setCompanyStatus("启用");
		Boolean flag = companyVipService
				.addUpgradeProviderAndBuyers(companyvip);
		return "front/vipusercenter/right/provider";

	}

}
