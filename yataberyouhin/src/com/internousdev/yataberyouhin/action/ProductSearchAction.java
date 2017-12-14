package com.internousdev.yataberyouhin.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.yataberyouhin.dao.ProductInfoDAO;
import com.internousdev.yataberyouhin.dto.ProductInfoDTO;
import com.internousdev.yataberyouhin.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class ProductSearchAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;
	private ArrayList<ProductInfoDTO> productInfoDTOList = new ArrayList<ProductInfoDTO>();
	private String categoryId;
	private String categoryName;
	private String keyword;
	private String errMsg;
	ProductInfoDAO dao = new ProductInfoDAO();

	public String execute() {
		String ret = ERROR;
//全角を半角に置き換えて、文字列を分割する
		keyword= keyword.replace("　", " ");
		String[] keywords=keyword.split(" ", 0);


		if (categoryId != null) {
            //カテゴリー検索
			if (Integer.parseInt(categoryId) == 1) {
				productInfoDTOList = dao.selectAll();
			} else {
				productInfoDTOList = dao.selectByCategoryId(Integer.parseInt(categoryId));
			}
		} else {

			for(int k=0;k<keywords.length;k++){
				InputChecker i = new InputChecker();
				if (!i.keywordChk(keywords[k]).equals("OK")) {
					errMsg = i.keywordChk(keywords[k]);
					ret = SUCCESS;

				}
				//キーワード検索
				if (!keywords[k].equals("")) {
					productInfoDTOList = dao.selectByKeyWords(keywords);
					if (productInfoDTOList.size() > 0) {

					} else {

						productInfoDTOList = null;
					}

				}
			}

		}
		ret = SUCCESS;
		return ret;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<ProductInfoDTO> getProductInfoDTOList() {
		return productInfoDTOList;
	}

	public void setProductInfoDTOList(ArrayList<ProductInfoDTO> productInfoDTOList) {
		this.productInfoDTOList = productInfoDTOList;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public ProductInfoDAO getDao() {
		return dao;
	}

	public void setDao(ProductInfoDAO dao) {
		this.dao = dao;
	}

}
