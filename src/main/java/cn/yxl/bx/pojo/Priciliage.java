package cn.yxl.bx.pojo;

// Generated 2017-12-5 10:32:31 by Hibernate Tools 4.0.0

/**
 * BxPriciliage generated by hbm2java
 */
public class Priciliage implements java.io.Serializable {

	private Integer priid;
	private String pname;
	private String priUrl;
	private String priImage;
	private Integer parentid;
	private String status;

	public Priciliage() {
	}

	public Priciliage(String pname, String priUrl, String priImage,
			Integer parentid, String status) {
		this.pname = pname;
		this.priUrl = priUrl;
		this.priImage = priImage;
		this.parentid = parentid;
		this.status = status;
	}

	public Integer getPriid() {
		return this.priid;
	}

	public void setPriid(Integer priid) {
		this.priid = priid;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPriUrl() {
		return this.priUrl;
	}

	public void setPriUrl(String priUrl) {
		this.priUrl = priUrl;
	}

	public String getPriImage() {
		return this.priImage;
	}

	public void setPriImage(String priImage) {
		this.priImage = priImage;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}