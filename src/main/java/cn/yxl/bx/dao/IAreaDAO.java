package cn.yxl.bx.dao;

import java.util.List;

import cn.yxl.bx.pojo.Area;

public interface IAreaDAO {

	public List<Area> findAreaByFather(String father);

}
