package cn.yxl.bx.pojo;

// Generated 2017-12-5 10:32:31 by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * BxProvince generated by hbm2java
 */
public class Province implements java.io.Serializable {
	private Integer id;
	private String provinceid;
	private String province;

	public Province() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProvinceid() {
		return provinceid;
	}

	public void setProvinceid(String provinceid) {
		this.provinceid = provinceid;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

}
