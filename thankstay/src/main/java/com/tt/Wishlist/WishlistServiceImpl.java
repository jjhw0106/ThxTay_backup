package com.tt.Wishlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Explore.LodgingListVO;

@Service
public class WishlistServiceImpl implements WishlistService{
	@Autowired
	WishlistDao wishlistDao;
	
	@Override
	public void insertWishList(int userNo, String listName) {
		wishlistDao.insertWishList(userNo, listName);
	}

	@Override
	public void deleteWishList(int userNo, int listNo) {
		
	}

	@Override
	public List<WishlistVO> getWishListByUserNo(int userNo) {
		List<WishlistVO> wishlists = wishlistDao.getWishListByUserNo(userNo);
		return(wishlists);
	}

	@Override
	public void insertWishList(int userNo, int listNo, int lodgingNo) {
		
	}

	@Override
	public void deleteLodgingFromWishList(int userNo, int lodgingNo) {
		
	}
	
	public List<LodgingListVO> getZzimedLodgingsByWishListNo(int wishlistNo){
		return null;
	}

}
