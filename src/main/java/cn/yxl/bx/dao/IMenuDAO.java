package cn.yxl.bx.dao;

import java.util.List;

import cn.yxl.bx.pojo.Menu;

public interface IMenuDAO {
	/**
	 * @deprecated查询所有的菜单
	 * @author houchunqiang
	 * @return
	 */
	public List<Menu> findAllMenu();
}
