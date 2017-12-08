package cn.yxl.bx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.ICityDAO;
import cn.yxl.bx.pojo.City;
import cn.yxl.bx.service.ICityService;

@Service
public class CityServiceImpl implements ICityService {
	@Autowired
	private ICityDAO citydao;

	public List<City> findCityByFather(String father) {
		// TODO Auto-generated method stub
		return citydao.findCityByFather(father);
	}

}
