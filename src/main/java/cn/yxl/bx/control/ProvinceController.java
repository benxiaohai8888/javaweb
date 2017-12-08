package cn.yxl.bx.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.yxl.bx.pojo.Province;
import cn.yxl.bx.service.IProvinceService;

@Controller
@RequestMapping("provincecontrl")
public class ProvinceController {
	@Autowired
	private IProvinceService provinceservice;

	/** 查询所有的省份 , produces = "text/html;charset=UTF-8" */
	@ResponseBody
	@RequestMapping(value = "findallprovince")
	public List<Province> findAllProvince() {
		List<Province> provincelist = provinceservice.findAllProvince();
		System.out.println(provincelist.size() + "----------------");
		return provincelist;
	}
}
