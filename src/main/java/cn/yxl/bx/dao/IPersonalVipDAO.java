package cn.yxl.bx.dao;

import cn.yxl.bx.pojo.PersonalVip;

public interface IPersonalVipDAO {
	/**
	 * 添加采购商或者供应商信息
	 * 
	 * @author houchunqiang
	 * @param personalvip
	 * @return
	 */
	public Integer addUpgradeProviderAndBuyers(PersonalVip personalvip);

}
