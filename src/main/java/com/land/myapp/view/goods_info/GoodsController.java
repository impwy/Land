package com.land.myapp.view.goods_info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.land.myapp.model.goods.GoodsService;
import com.land.myapp.model.goods.GoodsVO;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	
	//상품등록된 굿즈페이지 확인
//	@RequestMapping(value="")
//	public String goodsViewList(Model model) {
//		List<GoodsVO> list = goodsService.listProduct();
//		model.addAttribute("list",list);
//		return "/";
//	}//버튼을 누르면 굿즈정보입력 화면 진입
	@RequestMapping("/write")
	public String addGoods() {
		return "/goods/product_write";
	}//굿즈입력화면에서 상품 등록 입력완료후 처리
	@RequestMapping(value="/form1", method=RequestMethod.POST)
	public String insertGoods(GoodsVO vo) {
		goodsService.insertGoods(vo);
		System.out.println("굿즈등록성공");
		return "/main";
	}
	
	
	//관리자페이지로 이동
	@RequestMapping("/insert")
	public String adminView(GoodsVO vo) {
		System.out.println("관리자 상품관리 페이지 접속");
		return "/goods/admin_menu";
	}
	
	//상품리스트페이지이동
		@RequestMapping("/list")
		public String listView() {
			// views/shop/product_write.jsp로 이동
			return "goods/product_list";
		}

}
