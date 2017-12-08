package cn.yxl.bx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.IVipUserDAO;
import cn.yxl.bx.pojo.VipUser;
import cn.yxl.bx.service.IVipUserService;

@Service
public class VipUserServiceImpl implements IVipUserService {
	@Autowired
	private IVipUserDAO vipuserdao;

	public Integer doInsert(VipUser vipuser) {
		if (vipuser == null) {
			return null;
		}
		Integer result = vipuserdao.doInsert(vipuser);
		return result;
	}

	public VipUser isLogin(VipUser vipuser) {
		if (vipuser == null) {
			return null;
		}

		return vipuserdao.isLogin(vipuser);
	}

	public VipUser findVipuserByUserid(Integer userid) {
		if (userid == null) {
			return null;
		}
		return vipuserdao.findVipuserByUserid(userid);
	}

	public void updateVipuser(VipUser vipuser) {
		if (vipuser == null) {
			return;
		}
		vipuserdao.updateVipuser(vipuser);
	}

}
