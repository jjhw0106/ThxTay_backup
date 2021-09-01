package com.tt.Wishlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;

@Controller
public class WishlistController {
	@Autowired WishlistService wishlistService;
	
	@GetMapping(path = {"/wishlist/add/json"})
	@ResponseBody
	public void AddWishlist(
			@RequestParam(value="wishName", required=true) String wishlistName,
			@LoginUser UserVO user
			){
		int userNo = user.getNo();
		wishlistService.insertWishList(userNo, wishlistName);
	}

	@GetMapping(path = {"/wishlist/get/json"})
	@ResponseBody
	public List<WishlistVO> getWishlist(@LoginUser UserVO user){
		List<WishlistVO> wishlists = wishlistService.getWishListByUserNo(user.getNo());
		return wishlists;
	}
	
}