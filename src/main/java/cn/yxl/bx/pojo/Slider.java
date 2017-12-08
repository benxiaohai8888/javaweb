package cn.yxl.bx.pojo;

import java.io.Serializable;

public class Slider implements Serializable {
	private Integer sliderid;
	private String title;
	private String sliderUrl;
	private String status;

	public Integer getSliderid() {
		return sliderid;
	}

	public void setSliderid(Integer sliderid) {
		this.sliderid = sliderid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSliderUrl() {
		return sliderUrl;
	}

	public void setSliderUrl(String sliderUrl) {
		this.sliderUrl = sliderUrl;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
