package cn.yxl.bx.pojo;

// Generated 2017-12-5 10:32:31 by Hibernate Tools 4.0.0

/**
 * BxCompanyVip generated by hbm2java
 */
public class CompanyVip implements java.io.Serializable {

	private Integer comid;
	private VipUser vipUsers;
	private String companyName;
	private String address;
	private String licensePic;
	private String orgnaizationPic;
	private String taxPic;
	private String officePic;
	private String foodPic;
	private String otherPic01;
	private String otherPic02;
	private String otherPic03;
	private String otherPic04;
	private String otherPic05;
	private String boosName;
	private String operatorName;
	private String operatorJob;
	private String operatorPhone;
	private String companyStatus;
	private String style;

	public CompanyVip() {
	}

	public CompanyVip(Integer comid, VipUser vipUsers, String companyName,
			String address, String licensePic, String orgnaizationPic,
			String taxPic, String officePic, String foodPic, String otherPic01,
			String otherPic02, String otherPic03, String otherPic04,
			String otherPic05, String boosName, String operatorName,
			String operatorJob, String operatorPhone, String companyStatus,
			String style) {
		super();
		this.comid = comid;
		this.vipUsers = vipUsers;
		this.companyName = companyName;
		this.address = address;
		this.licensePic = licensePic;
		this.orgnaizationPic = orgnaizationPic;
		this.taxPic = taxPic;
		this.officePic = officePic;
		this.foodPic = foodPic;
		this.otherPic01 = otherPic01;
		this.otherPic02 = otherPic02;
		this.otherPic03 = otherPic03;
		this.otherPic04 = otherPic04;
		this.otherPic05 = otherPic05;
		this.boosName = boosName;
		this.operatorName = operatorName;
		this.operatorJob = operatorJob;
		this.operatorPhone = operatorPhone;
		this.companyStatus = companyStatus;
		this.style = style;
	}

	public Integer getComid() {
		return this.comid;
	}

	public void setComid(Integer comid) {
		this.comid = comid;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLicensePic() {
		return this.licensePic;
	}

	public void setLicensePic(String licensePic) {
		this.licensePic = licensePic;
	}

	public String getOrgnaizationPic() {
		return this.orgnaizationPic;
	}

	public void setOrgnaizationPic(String orgnaizationPic) {
		this.orgnaizationPic = orgnaizationPic;
	}

	public String getTaxPic() {
		return this.taxPic;
	}

	public void setTaxPic(String taxPic) {
		this.taxPic = taxPic;
	}

	public String getOfficePic() {
		return this.officePic;
	}

	public void setOfficePic(String officePic) {
		this.officePic = officePic;
	}

	public String getFoodPic() {
		return this.foodPic;
	}

	public void setFoodPic(String foodPic) {
		this.foodPic = foodPic;
	}

	public String getOtherPic01() {
		return this.otherPic01;
	}

	public void setOtherPic01(String otherPic01) {
		this.otherPic01 = otherPic01;
	}

	public String getOtherPic02() {
		return this.otherPic02;
	}

	public void setOtherPic02(String otherPic02) {
		this.otherPic02 = otherPic02;
	}

	public String getOtherPic03() {
		return this.otherPic03;
	}

	public void setOtherPic03(String otherPic03) {
		this.otherPic03 = otherPic03;
	}

	public String getOtherPic04() {
		return this.otherPic04;
	}

	public void setOtherPic04(String otherPic04) {
		this.otherPic04 = otherPic04;
	}

	public String getOtherPic05() {
		return this.otherPic05;
	}

	public void setOtherPic05(String otherPic05) {
		this.otherPic05 = otherPic05;
	}

	public String getBoosName() {
		return this.boosName;
	}

	public void setBoosName(String boosName) {
		this.boosName = boosName;
	}

	public String getOperatorName() {
		return this.operatorName;
	}

	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}

	public String getOperatorJob() {
		return this.operatorJob;
	}

	public void setOperatorJob(String operatorJob) {
		this.operatorJob = operatorJob;
	}

	public String getOperatorPhone() {
		return this.operatorPhone;
	}

	public void setOperatorPhone(String operatorPhone) {
		this.operatorPhone = operatorPhone;
	}

	public String getCompanyStatus() {
		return this.companyStatus;
	}

	public void setCompanyStatus(String companyStatus) {
		this.companyStatus = companyStatus;
	}

	public String getStyle() {
		return this.style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public VipUser getVipUsers() {
		return vipUsers;
	}

	public void setVipUsers(VipUser vipUsers) {
		this.vipUsers = vipUsers;
	}

}