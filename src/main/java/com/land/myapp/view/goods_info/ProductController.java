package com.land.myapp.view.goods_info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.land.myapp.model.goods.GoodsService;
import com.land.myapp.model.goods.GoodsVO;

@Controller
public class ProductController {
	@Autowired
	private GoodsService goodService;
	
	@RequestMapping(value="/goodsInfo", method=RequestMethod.GET)
	public String getGoodsInfo(GoodsVO vo, int goods_num, Model model) {
		model.addAttribute("goods", goodService.getGoodsInfo(goods_num));
		return "/goods/goodsPage";
	}
	
}
