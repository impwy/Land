

package com.land.myapp.model.goods.Impl;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.goods.GoodsVO;





@Repository
public class GoodsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//상품정보수정
	public void updateGoods(GoodsVO vo) {
		mybatis.update("GoodsDAO.goods_update",vo);
	}
	//상품 삭제
	public void deleteGoods(int goods_num) {
		mybatis.delete("GoodsDAO.goods_delete",goods_num);
	}
	//상품 등록
	public void insertGoods(GoodsVO vo) {
		System.out.println("dao넘어옴");
		System.out.println(vo);
		mybatis.insert("GoodsDAO.goods_insert",vo);
	}

	//상품상세
	public GoodsVO getGoodsInfo(int goods_num){
		return mybatis.selectOne("goodsInfoDAO.getGoodsInfo",goods_num);
	}
	

	// 품목 리스트
		public List<GoodsVO> getGoodsList(int start, int end, GoodsVO vo) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("goods", vo);
			System.out.println("dao통과");
			return mybatis.selectList("GoodsDAO.getGoodsList",map);
			
		}
		
		// 리스트 갯수 체크
		public int getCountGoods(GoodsVO vo) {
			return mybatis.selectOne("GoodsDAO.getCountGoods", vo);
		}
		
		//관리자 품목 리스트
		public List<GoodsVO> getAdminGoodsList(int start, int end, GoodsVO vo) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("goods", vo);
			System.out.println("dao통과");
			return mybatis.selectList("GoodsDAO.getGoodsList",map);
			
		}
		// 관리자 페이지 리스트 갯수 체크
				public int getAdminCountGoods(GoodsVO vo) {
					return mybatis.selectOne("GoodsDAO.getAdminCountGoods", vo);
				}
				

				public List<GoodsVO> getGoodsOne(int goods_num){
					return mybatis.selectOne("GoodsDAO.goods_update",goods_num);
				}
		


}
