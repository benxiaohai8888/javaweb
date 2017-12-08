package cn.yxl.bx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.IMenuDAO;
import cn.yxl.bx.pojo.Menu;
import cn.yxl.bx.service.IMenuService;

@Service
public class MenuServiceImpl implements IMenuService {
	@Autowired
	private IMenuDAO menudao;

	public List<Menu> findAllMenu() {
		return menudao.findAllMenu();
	}

}
