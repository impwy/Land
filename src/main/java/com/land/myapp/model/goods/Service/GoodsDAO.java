

package com.land.myapp.model.goods.Service;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.goods.DTO.GoodsDTO;





@Repository
public class GoodsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//상품정보수정
	public void updateGoods(GoodsDTO vo) {
		mybatis.update("GoodsDAO.goods_update",vo);
	}
	//상품 삭제
	public void deleteGoods(int goods_num) {
		mybatis.delete("GoodsDAO.goods_delete",goods_num);
	}
	//상품 등록
	public void insertGoods(GoodsDTO vo) {
		System.out.println("dao넘어옴");
		System.out.println(vo);
		mybatis.insert("GoodsDAO.goods_insert",vo);
	}

	//상품상세
	public GoodsDTO getGoodsInfo(int goods_num){
		return mybatis.selectOne("goodsInfoDAO.getGoodsInfo",goods_num);
	}
	

	// 품목 리스트
		public List<GoodsDTO> getGoodsList(int start, int end, GoodsDTO vo) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("goods", vo);
			System.out.println("dao통과");
			return mybatis.selectList("GoodsDAO.getGoodsList",map);
			
		}
		
		// 리스트 갯수 체크
		public int getCountGoods(GoodsDTO vo) {
			return mybatis.selectOne("GoodsDAO.getCountGoods", vo);
		}
		
		//관리자 품목 리스트
		public List<GoodsDTO> getAdminGoodsList(int start, int end, GoodsDTO vo) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("goods", vo);
			System.out.println("dao통과");
			return mybatis.selectList("GoodsDAO.getGoodsList",map);
			
		}
		// 관리자 페이지 리스트 갯수 체크
				public int getAdminCountGoods(GoodsDTO vo) {
					return mybatis.selectOne("GoodsDAO.getAdminCountGoods", vo);
				}
				

				public List<GoodsDTO> getGoodsOne(int goods_num){
					return mybatis.selectOne("GoodsDAO.goods_update",goods_num);
				}
		


}
