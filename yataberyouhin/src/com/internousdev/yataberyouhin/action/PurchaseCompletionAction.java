package com.internousdev.yataberyouhin.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.yataberyouhin.dao.CartInfoDAO;
import com.internousdev.yataberyouhin.dao.ProductInfoDAO;
import com.internousdev.yataberyouhin.dao.PurchaseHistoryDAO;
import com.internousdev.yataberyouhin.dto.CartInfoDTO;
import com.internousdev.yataberyouhin.dto.ProductInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PurchaseCompletionAction extends ActionSupport implements SessionAware{

	private ArrayList<CartInfoDTO> cartInfoDTO = new ArrayList<CartInfoDTO>();
	private  Map<String,Object> session;



	public String execute() throws SQLException{
		CartInfoDAO cdao = new CartInfoDAO();
		PurchaseHistoryDAO pdao = new PurchaseHistoryDAO();
		ProductInfoDAO adao=new ProductInfoDAO();

		cartInfoDTO = cdao.aquireUserCartInfo(session.get("userId").toString());
		for (CartInfoDTO dto: cartInfoDTO) {
			pdao.purchaseHistoryInfo(session.get("userId").toString(), dto.getProductId(),dto.getCount());

			ProductInfoDTO productInfoDTO=adao.selectByProductId(dto.getProductId());
		    adao.updateStock(productInfoDTO.getProductId(),(productInfoDTO.getStock()-dto.getCount()));
		}
		cdao.deleteUserCartInfo(session.get("userId").toString());

		String result;
		result=SUCCESS;
		return result;

	}




	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session){
		this.session=session;
	}

	}
