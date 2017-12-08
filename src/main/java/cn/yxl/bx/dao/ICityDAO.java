package cn.yxl.bx.dao;

import java.util.List;

import cn.yxl.bx.pojo.City;

public interface ICityDAO {

	public List<City> findCityByFather(String father);

}
