package cn.yxl.bx.service;

import cn.yxl.bx.pojo.CompanyVip;

public interface ICompanyVipService {
	/**
	 * 添加供应商,采购商（以公司身份）
	 * 
	 * @author houchunqiang
	 * @param companyvip
	 * @return
	 */
	public Boolean addUpgradeProviderAndBuyers(CompanyVip companyvip);

}
