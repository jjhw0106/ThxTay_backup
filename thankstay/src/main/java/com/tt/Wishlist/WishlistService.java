package com.tt.Wishlist;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tt.Explore.LodgingListVO;

@Service
public interface WishlistService {

	//새 위시리스트 만들기
	void insertWishList(int userNo, String listName);
	//위시리스트 삭제하기
	void deleteWishList(int userNo, int listNo);


	//아이디(유저번호)로 모든 위시리스트 불러오기
	List<WishlistVO> getWishListByUserNo(int userNo);

	//위시리스트 번호로 숙소 추가하기
	void insertWishList(int userNo, int listNo, int lodgingNo);	//어차피 service나 컨트롤러 단계에서 체크할건데 user번호 필요?

	//등록된 숙소를 위시리스트에서 제거하기(유저번호 조회도 필수)
	void deleteLodgingFromWishList(int userNo, int lodgingNo);
	
	List<LodgingListVO> getZzimedLodgingsByWishListNo(int wishlistNo);
}
