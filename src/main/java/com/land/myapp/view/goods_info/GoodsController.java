package com.land.myapp.view.goods_info;





import java.util.HashMap;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.land.myapp.Pager;
import com.land.myapp.model.goods.GoodsService;
import com.land.myapp.model.goods.GoodsVO;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	
	
	
	//db저장된 굿즈, 화면에 뿌려주기
	@RequestMapping(value="/goodsmall",method=RequestMethod.GET)
	public String goodsViewList(@RequestParam(defaultValue = "1") int curPage, GoodsVO vo, Model model) {
		int count = goodsService.getCountGoods(vo);
		Pager pager = new Pager(count,curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<GoodsVO> list = goodsService.getGoodsList(start, end, vo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		System.out.println(list);
		model.addAttribute("map",map);
		System.out.println("컨트롤러 통과");
		return "/menu/goodsmall";
	}
	
		
	//굿즈 삭제 
		@RequestMapping("/product_delete")
		public String delete(int goods_num) {
			goodsService.deleteGoods(goods_num);			
			return "redirect:/product_list";
				}
		//굿즈수정페이지이동
		@RequestMapping(value="/editgoods", method=RequestMethod.GET)
		public String visitUpdate(int goods_num, Model model) {
		GoodsVO result = goodsService.getGoodsInfo(goods_num);
			model.addAttribute("list",result);
			System.out.println(model);
			return "/goods/product_edit";
		}
		
//	   //굿즈수정페이지이동
//		@RequestMapping(value="/editgoods", method=RequestMethod.POST)
//		public String Update(int goods_num, Model model) {
//			GoodsVO result = goodsService.getGoodsInfo(goods_num);
//			model.addAttribute("list",result);
//			System.out.println(model);
//			return "/goods/product_edit";
//		}
		
		//굿즈수정
		@RequestMapping(value="/form2", method=RequestMethod.POST)
		public String updateGoods(GoodsVO vo) {	
			goodsService.updateGoods(vo);
			return "redirect:/product_list";
		}
	
		
	
	//버튼을 누르면 굿즈등록입력 화면 진입
	@RequestMapping("/write")
	public String addGoods() {
		return "/goods/product_write";
	}

	
	//굿즈입력화면에서 상품 등록 입력완료후 처리
	@RequestMapping(value="/form1", method=RequestMethod.POST)
	public String insertGoods(GoodsVO vo) {
		goodsService.insertGoods(vo);
		System.out.println("굿즈등록성공");
		return "/goods/product_list";
	}
	
	
	//관리자페이지로 이동
	@RequestMapping("/insert")
	public String adminView(GoodsVO vo) {
		System.out.println("관리자 상품관리 페이지 접속");
		return "/goods/admin_menu";
	}
	
	
		
		//관리자용 상품 목록
		@RequestMapping(value="/product_list",method=RequestMethod.GET)
		public String goodsAdminViewList(@RequestParam(defaultValue = "1") int curPage, GoodsVO vo, Model model) {
			int count = goodsService.getCountGoods(vo);
			Pager pager = new Pager(count,curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
			
			List<GoodsVO> list = goodsService.getGoodsList(start, end, vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			map.put("list", list);
			map.put("count", count);
			map.put("pager", pager);
			System.out.println(list);
			model.addAttribute("map",map);
			System.out.println("컨트롤러 통과");
			return "/goods/product_list";
		}
		
		//상품 상세보기
		@RequestMapping(value="/goodsInfo",method=RequestMethod.GET)
		public String getGoodsInfo(GoodsVO vo, int goods_num, Model model) {
			model.addAttribute("goods", goodsService.getGoodsInfo(goods_num));
			return "/goods/goodsPage";
		}

}
