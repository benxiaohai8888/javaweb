package cn.yxl.bx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.ICompanyVipDAO;
import cn.yxl.bx.pojo.CompanyVip;
import cn.yxl.bx.service.ICompanyVipService;

@Service
public class CompanyVipServiceImpl implements ICompanyVipService {
	@Autowired
	private ICompanyVipDAO companyvipdao;

	public Boolean addUpgradeProviderAndBuyers(CompanyVip companyvip) {
		int result = companyvipdao.addUpgradeProviderAndBuyers(companyvip);
		return result > 0 ? true : false;
	}

}
