package com.internousdev.yataberyouhin.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import com.internousdev.yataberyouhin.dao.ProductInfoDAO;
import com.internousdev.yataberyouhin.dao.ReviewInfoDAO;
import com.internousdev.yataberyouhin.dto.ProductInfoDTO;
import com.internousdev.yataberyouhin.dto.ReviewInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductInfoDetailAction extends ActionSupport {

	private ProductInfoDTO productInfoDTO = new ProductInfoDTO();

	private int productId;

	private ArrayList<ProductInfoDTO> productInfoDTOList = new ArrayList<ProductInfoDTO>();

	private ArrayList<ReviewInfoDTO> reviewList = new ArrayList<>();

	private ArrayList<ProductInfoDTO> similarInfoDTOList = new ArrayList<ProductInfoDTO>();

	public String execute() throws SQLException {
		String ret = ERROR;
		ProductInfoDAO dao = new ProductInfoDAO();

		if (productId > 0) {
			productInfoDTO = dao.selectByProductId(productId);
			// ここから37行目までで、商品のレビューを取得しています
			ReviewInfoDAO reviewInfoDAO = new ReviewInfoDAO();
			for (ReviewInfoDTO reviewInfoDTO : reviewInfoDAO.aquireReviewInfo(productId)) {
				reviewList.add(reviewInfoDTO);
			}

			productInfoDTOList = dao.selectByCategoryId(productInfoDTO.getCategoryId());

			Iterator<ProductInfoDTO> iter = productInfoDTOList.iterator();
			for (int i= 0;  i< 4; i++) {
				if (iter.hasNext()) {
					ProductInfoDTO dto = iter.next();

					if (dto.getProductId() != productInfoDTO.getProductId()) {

						similarInfoDTOList.add(dto);

					} else {
						i--;
						continue;
					}

				} else {
					break;
				}
			}
			ret = SUCCESS;
		} else {
			ret = ERROR;
		}
		return ret;
	}

	public ProductInfoDTO getProductListDTO() {
		return productInfoDTO;
	}

	public void setProductListDTO(ProductInfoDTO productListDTO) {
		this.productInfoDTO = productListDTO;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public ArrayList<ProductInfoDTO> getProductInfoDTOList() {
		return productInfoDTOList;
	}

	public void setProductInfoDTOList(ArrayList<ProductInfoDTO> productInfoDTOList) {
		this.productInfoDTOList = productInfoDTOList;
	}

	/**
	 * @return reviewList
	 */
	public ArrayList<ReviewInfoDTO> getReviewList() {
		return reviewList;
	}

	/**
	 * @param reviewList
	 *            セットする reviewList
	 */
	public void setReviewList(ArrayList<ReviewInfoDTO> reviewList) {
		this.reviewList = reviewList;
	}

	public ProductInfoDTO getProductInfoDTO() {
		return productInfoDTO;
	}

	public void setProductInfoDTO(ProductInfoDTO productInfoDTO) {
		this.productInfoDTO = productInfoDTO;
	}

	public ArrayList<ProductInfoDTO> getSimilarInfoDTOList() {
		return similarInfoDTOList;
	}

	public void setSimilarInfoDTOList(ArrayList<ProductInfoDTO> similarInfoDTOList) {
		this.similarInfoDTOList = similarInfoDTOList;
	}

}
