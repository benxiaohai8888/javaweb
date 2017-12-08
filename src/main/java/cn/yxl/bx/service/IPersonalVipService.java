package cn.yxl.bx.service;

import cn.yxl.bx.pojo.PersonalVip;

public interface IPersonalVipService {
	/**
	 * 添加个人供应商或采购商
	 * 
	 * @author houchunqiang
	 * @param personalvip
	 * @return
	 */
	public Boolean addUpgradeProviderAndBuyers(PersonalVip personalvip);
}
