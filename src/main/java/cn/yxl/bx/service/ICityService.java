package cn.yxl.bx.service;

import java.util.List;

import cn.yxl.bx.pojo.City;

public interface ICityService {

	public List<City> findCityByFather(String father);

}
