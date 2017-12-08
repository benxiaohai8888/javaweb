package cn.yxl.bx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yxl.bx.dao.ISliderDAO;
import cn.yxl.bx.pojo.Slider;
import cn.yxl.bx.service.ISliderService;

@Service
public class SliderServiceImpl implements ISliderService {
	@Autowired
	private ISliderDAO sliderdao;

	public List<Slider> findAllSlider() {
		return sliderdao.findAllSlider();
	}

}
