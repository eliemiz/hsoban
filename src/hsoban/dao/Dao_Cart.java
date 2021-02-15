package hsoban.dao;

import java.util.ArrayList;
import hsoban.vo.Cart;

public class Dao_Cart extends Dao {

	// 조회(전체, 리스트)
	public ArrayList<Cart> getCartList() {

		ArrayList<Cart> list = null;
		
		return list;

	}

	// 조회(조건, 리스트)
	public ArrayList<Cart> getCartList(int account_id) {

		ArrayList<Cart> list = null;

		return list;
	}

	// 조회(조건, 단일)
	public Cart getCart(int account_id, int product_id, String color) {
		
		Cart cart = null;

		return cart;
	}

	// 입력
	public void insertCart(Cart cart) {
		
	}
	
	// 수정
	public void updateCart(Cart cart) {
		
	}
	
	// 삭제
	public void deleteCart(int account_id, int product_id, String color) {
		
	}
}
