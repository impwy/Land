package com.land.myapp.view.goods;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.land.myapp.model.goods.GoodsService;
import com.land.myapp.model.goods.GoodsVO;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	
	//회원
	
	//관리자
	
	//상품 등록페이지로 이동
	@RequestMapping("/insert")
	public String insertGoodsView(GoodsVO vo) {
		System.out.println("상품등록 페이지 접속");
		return "/goods/insertGoods";
	}
	//상품등록
	@RequestMapping("/insertGoods")
	public String insertGoods(GoodsVO vo, RedirectAttributes rttr) {
		System.out.println("상품등록 컨트롤러통과");
		goodsService.insertGoods(vo);
		rttr.addFlashAttribute("insert_result", vo.getGoods_name());
		return "/goods/Goods";
		
	}
	
	
	

}
