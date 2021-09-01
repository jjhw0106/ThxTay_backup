package com.tt.Wishlist;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.tt.Explore.LodgingListVO;
import com.tt.Lodging.LodgingVO;

@Mapper
public interface WishlistDao {

	//새 위시리스트 만들기
	void insertWishList(@Param("userNo")int userNo, @Param("listName")String listName);
	//위시리스트 삭제하기
	void deleteWishList(int userNo, @Param("listNo")int listNo); //값 하나는 확인하는데 쓰고 하나는 xml에 쓰고 이렇게 가능?
	
	
	//아이디(유저번호)로 모든 위시리스트 불러오기
	List<WishlistVO> getWishListByUserNo(int userNo);
	
	//위시리스트 번호로 숙소 추가하기
	void addLodgingByWishListNo(int userNo, @Param("listNo")int listNo, @Param("lodgingNo")int lodgingNo);	//어차피 service나 컨트롤러 단계에서 체크할건데 user번호 필요?
	
	//등록된 숙소를 위시리스트에서 제거하기(유저번호 조회도 필수)
	void removeLodgingFromWishList(int userNo, int lodgingNo);
	
	//위시리스트 번호로 저장된 숙소 목록 조회하기
	List<LodgingListVO> getZzimedLodgingsByWishListNo(int wishlistNo);
}
