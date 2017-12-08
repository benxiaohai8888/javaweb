package cn.yxl.bx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.IPersonalVipDAO;
import cn.yxl.bx.pojo.PersonalVip;
import cn.yxl.bx.service.IPersonalVipService;

@Service
public class PersonalVipServiceImpl implements IPersonalVipService {

	@Autowired
	private IPersonalVipDAO personalVipDao;

	public Boolean addUpgradeProviderAndBuyers(PersonalVip personalvip) {
		Integer result = personalVipDao
				.addUpgradeProviderAndBuyers(personalvip);
		return result > 0 ? true : false;
	}

}
