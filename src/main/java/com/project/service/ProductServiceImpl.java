package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.ProductDAO;
import com.project.model.Product;


@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDAO;

	@Transactional
	public void addProduct(Product product) {
		productDAO.addProduct(product);
		
	}
	@Transactional
	public List<Product> getAllProducts() {
		return productDAO.getAllProducts();
	}
	@Transactional
	public void deleteProduct(Integer productId) {
		productDAO.deleteProduct(productId);	
		
	}

	public Product updateProduct(Product product) {
		return productDAO.updateProduct(product);
	}

	public Product getProduct(int proid) {
		return productDAO.getProduct(proid);
	}
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}


}
