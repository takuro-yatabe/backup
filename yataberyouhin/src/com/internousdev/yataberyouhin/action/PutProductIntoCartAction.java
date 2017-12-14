package com.internousdev.yataberyouhin.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.yataberyouhin.dao.CartInfoDAO;
import com.internousdev.yataberyouhin.dto.CartInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PutProductIntoCartAction extends ActionSupport implements SessionAware {

	Map<String, Object> session;

	ArrayList<CartInfoDTO> cartList = new ArrayList<>();

	int productId;

	int totalPrice = 0;

	int count;

	public String execute() throws SQLException {
		CartInfoDAO dao = new CartInfoDAO();
		CartInfoDTO dto = new CartInfoDTO();

		dto.setProductId(productId);
		dto.setCount(count);
		if (session.containsKey("loginFlg") && (boolean) session.get("loginFlg")) {
			dto.setUserId(session.get("userId").toString());
			dao.putProductIntoCart(dto);
			for (CartInfoDTO cartInfoDTO: dao.showUserCartList(session.get("userId").toString())) {
				cartList.add(cartInfoDTO);
			}
		} else {
			dto.setTempUserId(session.get("userId").toString());
			dao.putProductIntoCartOfGuestUser(dto);
			for (CartInfoDTO cartInfoDTO: dao.showTempUserCartList(session.get("userId").toString())) {
				cartList.add(cartInfoDTO);
			}
		}

		totalPrice = calcTotalPrice(cartList);
		return SUCCESS;
	}


	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return productId
	 */
	public int getProductId() {
		return productId;
	}

	/**
	 * @param productId セットする product_id
	 */
	public void setProductId(int productId) {
		this.productId = productId;
	}


	/**
	 * @return cartList
	 */
	public ArrayList<CartInfoDTO> getCartList() {
		return cartList;
	}


	/**
	 * @param cartList セットする cartList
	 */
	public void setCartList(ArrayList<CartInfoDTO> cartList) {
		this.cartList = cartList;
	}


	/**
	 * @return totalPrice
	 */
	public int getTotalPrice() {
		return totalPrice;
	}


	/**
	 * @param totalPrice セットする totalPrice
	 */
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	/**
	 * 合計金額を計算するメソッド
	 */
	public int calcTotalPrice(ArrayList<CartInfoDTO> cartList) {
		int totalPrice = 0;
		for(CartInfoDTO dto: cartList) {
			totalPrice += dto.getPrice() * dto.getCount();
		}
		return totalPrice;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}

}
