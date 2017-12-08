package cn.yxl.bx.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.yxl.bx.pojo.Area;
import cn.yxl.bx.service.IAreaService;

@Controller
@RequestMapping("areacontrl")
public class AreaController {
	@Autowired
	private IAreaService areaservice;

	/** 查询, produces = "text/html;charset=UTF-8" */
	@ResponseBody
	@RequestMapping(value = "findaerabyfather")
	public List<Area> findAreaByFather(String father) {
		System.out.println(father + "============");
		List<Area> arealist = areaservice.findAreaByFather(father);
		System.out.println("--------------" + arealist.size());
		return arealist;
	}
}
