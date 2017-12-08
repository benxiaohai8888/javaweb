package cn.yxl.bx.dao;

import cn.yxl.bx.pojo.VipUser;

public interface IVipUserDAO {
	/**
	 * 注册会员
	 * 
	 * @author houchunqiang
	 * @param vipuser
	 * @return
	 */
	public Integer doInsert(VipUser vipuser);

	/**
	 * 会员登录
	 * 
	 * @author houchunqiang
	 * @param vipuser
	 * @return
	 */
	public VipUser isLogin(VipUser vipuser);

	/**
	 * 根据会员编号查询会员信息
	 * 
	 * @author houchunqiang
	 * @param vipuser
	 * @return
	 */
	public VipUser findVipuserByUserid(Integer userid);

	/**
	 * 修改会员信息
	 * 
	 * @author houchunqiang
	 * @param vipuser
	 * @return
	 */
	public void updateVipuser(VipUser vipuser);
}
