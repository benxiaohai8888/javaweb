package cn.yxl.bx.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.yxl.bx.pojo.Menu;
import cn.yxl.bx.pojo.Slider;
import cn.yxl.bx.service.IMenuService;
import cn.yxl.bx.service.ISliderService;

@Controller
@RequestMapping("/")
@Scope("prototype")
public class WelcomeController {
	@Autowired
	private IMenuService menService;
	@Autowired
	private ISliderService sliderService;

	@RequestMapping("/")
	public String welcome(Model model) {
		// 查询所有的菜单
		List<Menu> menulist = menService.findAllMenu();
		model.addAttribute("menulist", menulist);
		return "front/main";
	}

	@RequestMapping("toppage")
	public String toppage(Model model) {
		// 查询所有的菜单
		List<Menu> menulist = menService.findAllMenu();
		model.addAttribute("menulist", menulist);
		return "front/top";
	}

	@RequestMapping("footpage")
	public String footpage(Model model) {
		// 查询所有的菜单
		List<Menu> menulist = menService.findAllMenu();
		model.addAttribute("menulist", menulist);
		return "front/foot";
	}

	@RequestMapping("firstpage")
	public String fisrtpage(Model model) {
		// 查询轮播图
		List<Slider> sliderlist = sliderService.findAllSlider();
		model.addAttribute("sliderlist", sliderlist);
		return "front/firstpage";
	}
}
