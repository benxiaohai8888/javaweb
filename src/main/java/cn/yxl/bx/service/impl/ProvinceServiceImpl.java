package cn.yxl.bx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.IProvinceDAO;
import cn.yxl.bx.pojo.Province;
import cn.yxl.bx.service.IProvinceService;

@Service
public class ProvinceServiceImpl implements IProvinceService {
	@Autowired
	private IProvinceDAO provincedao;

	@SuppressWarnings("deprecation")
	public List<Province> findAllProvince() {
		return provincedao.findAllProvince();
	}

}
