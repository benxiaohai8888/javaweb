package cn.yxl.bx.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.yxl.bx.pojo.City;
import cn.yxl.bx.service.ICityService;

@Controller
@RequestMapping("citycontrl")
public class CityController {
	@Autowired
	private ICityService cityservice;

	/** 查询, produces = "text/html;charset=UTF-8" */
	@ResponseBody
	@RequestMapping(value = "findcitybyfather")
	public List<City> findCityByFather(String father) {
		System.out.println(father + "============");
		List<City> citylist = cityservice.findCityByFather(father);
		System.out.println("--------------" + citylist.size());
		return citylist;
	}
}
