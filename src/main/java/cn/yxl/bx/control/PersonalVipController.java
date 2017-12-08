package cn.yxl.bx.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.yxl.bx.pojo.PersonalVip;
import cn.yxl.bx.pojo.VipUser;
import cn.yxl.bx.service.IPersonalVipService;
import cn.yxl.bx.utls.PicUploadUtil;

@Controller
@RequestMapping("personalvipcontrl")
@Scope("prototype")
public class PersonalVipController {
	@Autowired
	private IPersonalVipService personalVipService;

	/**
	 * 升级供应商预处理(以个人身份)
	 */
	@RequestMapping("preupgradeprovider")
	public String preUpgradeProvider() {
		return "front/vipusercenter/right/provider";

	}

	/**
	 * 升级供应商预处理(以个人身份)
	 */
	@RequestMapping("preupgradeproviderperson")
	public String preUpgradeProviderCom() {
		return "front/vipusercenter/right/provider_personal";

	}

	/**
	 * 升级供应商,采购商（个人身份）
	 */
	@RequestMapping("upgradeproviderandbuyers")
	public String upgradeProviderAndBuyers(PersonalVip personalvip,
			@RequestParam MultipartFile cpic, HttpServletRequest request,
			Model model) {
		if (cpic.isEmpty()) {
			return "front/vipusercenter/right/provider_personal";
		}
		String cpicpath = PicUploadUtil.upload(cpic, request);

		VipUser vuser = (VipUser) request.getSession().getAttribute(
				"sessionvipuser");

		personalvip.setCardPic(cpicpath);

		// 绑定到会员
		personalvip.setVipUsers(vuser);
		personalvip.setPersonalStatus("启用");
		Boolean flag = personalVipService
				.addUpgradeProviderAndBuyers(personalvip);
		return "front/vipusercenter/right/provider";

	}

}
