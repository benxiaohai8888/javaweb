package cn.yxl.bx.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.yxl.bx.pojo.VipUser;
import cn.yxl.bx.service.IProvinceService;
import cn.yxl.bx.service.IVipUserService;
import cn.yxl.bx.utls.PicUploadUtil;
import cn.yxl.bx.utls.SDKTestSendTemplateSMS;

@Controller
@RequestMapping("vipusercontrl")
@Scope("prototype")
public class VipUserController {
	@Autowired
	private IVipUserService vipuserservice;
	@Autowired
	private IProvinceService provinceservice;

	/**
	 * 注册预处理
	 * 
	 * @return
	 */
	@RequestMapping("prereg")
	public String preRegister() {
		return "front/register";
	}

	/**
	 * 注册获取手机验证码
	 * 
	 * @param mobile
	 *            验证码发送至的号码
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping("getmobliecode")
	public String getMobileCode(String mobile, HttpServletRequest request) {
		String msg = null;
		// 发送验证码
		try {
			SDKTestSendTemplateSMS.send(mobile, request);
			msg = "验证码发送至你的手机";
		} catch (Exception e) {
			msg = "服务期忙";
			// e.printStackTrace();
		}
		return msg;
	}

	/**
	 * 注册
	 */
	@RequestMapping("reg")
	public String register(VipUser vipuser, String mobilecode,
			HttpServletRequest request, Model model) {
		String mcode = (String) request.getSession().getAttribute("mobilecode");
		if (!mcode.equals(mobilecode)) {
			return "front/register";
		}
		// 手机验证码正确
		// Area area = new Area();
		// area.setId(1);
		// vipuser.setArea(area);
		vipuser.setUserStatus("0");
		Integer result = vipuserservice.doInsert(vipuser);
		if (result != null) {
			// model.addAttribute("userid", result);
			model.addAttribute("vipuser", vipuser);
			return "front/register_suc";
		}
		return "front/register";
	}

	/**
	 * 登录预处理
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("prelogin")
	public String preLogin(Model model) {
		return "front/login";
	}

	/**
	 * 登录
	 * 
	 * @param vipuser
	 *            用户登录信息
	 * @param code
	 *            图片验证码
	 * @param request
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("login")
	public Integer login(VipUser vipuser, String code,
			HttpServletRequest request, Model model) {
		Integer result = null;
		ModelAndView mav = new ModelAndView();
		String imagecode = (String) request.getSession().getAttribute(
				"imagecode");
		if (!code.equalsIgnoreCase(imagecode)) {
			result = 0;
		}
		// 验证码正确
		VipUser vuser = vipuserservice.isLogin(vipuser);
		if (vuser == null) {
			result = 1;
		} else {
			// 保存登录信息
			request.getSession().setAttribute("sessionvipuser", vuser);
			result = 2;
		}
		return result;
	}

	/**
	 * 进入个人中心预处理
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("prebasicmembeinfo")
	public String preBasicMembeInfo(HttpServletRequest request, Model model) {
		VipUser vuser = (VipUser) request.getSession().getAttribute(
				"sessionvipuser");
		VipUser vipuser = vipuserservice.findVipuserByUserid(vuser.getUserid());
		model.addAttribute("vipuser", vipuser);
		return "front/vipusercenter/vipuser_baseinfo";
	}

	/**
	 * 个人基本信息
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("baseinfo")
	public String baseinfo(HttpServletRequest request, Model model) {
		VipUser vuser = (VipUser) request.getSession().getAttribute(
				"sessionvipuser");
		VipUser vipuser = vipuserservice.findVipuserByUserid(vuser.getUserid());
		model.addAttribute("vipuser", vipuser);
		return "front/vipusercenter/right/baseinfo";
	}

	/**
	 * 修改基本个人信息（完善）
	 * 
	 * @param vipuser
	 *            用户个人信息
	 * @param pic
	 *            用户头像
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("updatebaseinfo")
	public String updateBaseinfo(VipUser vipuser,
			@RequestParam MultipartFile pic, HttpServletRequest request,
			Model model) {
		if (pic.isEmpty()) {
			return "front/vipusercenter/right/baseinfo";
		}
		String picpath = PicUploadUtil.upload(pic, request);
		vipuser.setPicpath(picpath);
		vipuserservice.updateVipuser(vipuser);
		return "front/vipusercenter/right/baseinfo";
	}

	// 认证
	@RequestMapping("authentication")
	public ModelAndView authentication(VipUser vipuser, String code,
			HttpServletRequest request, Model model) {
		ModelAndView mav = new ModelAndView();
		String imagecode = (String) request.getSession().getAttribute(
				"imagecode");
		if (!code.equalsIgnoreCase(imagecode)) {
			mav.setViewName("redirect:/front/login");
		}
		// 验证码正确
		VipUser vuser = vipuserservice.isLogin(vipuser);
		if (vuser == null) {
			mav.setViewName("redirect:/front/login");
		}
		// 保存登录信息
		request.getSession().setAttribute("vipuser", vuser);
		mav.setViewName("forward:/firstpage");
		return mav;
	}

}
