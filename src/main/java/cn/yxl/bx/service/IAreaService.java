package cn.yxl.bx.service;

import java.util.List;

import cn.yxl.bx.pojo.Area;

public interface IAreaService {

	public List<Area> findAreaByFather(String father);

}
