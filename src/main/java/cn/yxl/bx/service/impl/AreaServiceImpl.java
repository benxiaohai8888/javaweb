package cn.yxl.bx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.IAreaDAO;
import cn.yxl.bx.pojo.Area;
import cn.yxl.bx.service.IAreaService;

@Service
public class AreaServiceImpl implements IAreaService {
	@Autowired
	private IAreaDAO areadao;

	public List<Area> findAreaByFather(String father) {
		return areadao.findAreaByFather(father);
	}

}
