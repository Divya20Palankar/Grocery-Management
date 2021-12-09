package com.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Product;
import com.project.service.ProductService;


@Controller
public class ProductController {

	private static final Logger logger = Logger
			.getLogger(ProductController.class);
	
	public ProductController() {
		System.out.println("ProductController()");
	}

	@Autowired
	private ProductService productService;
	
	

	
	@RequestMapping(value = "/product_list")
	public ModelAndView listProduct(ModelAndView model) throws IOException {
		List<Product> listProduct = productService.getAllProducts();
		model.addObject("listProduct", listProduct);
		model.setViewName("product_list");
		return model;
	}
	
	@RequestMapping(value = "/user")
	public ModelAndView listPro(ModelAndView model) throws IOException {
		List<Product> listPro = productService.getAllProducts();
		model.addObject("listPro", listPro);
		model.setViewName("userdashboard");
		return model;
	}
	
	
	
	
	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute Product product) {
		if (product.getId() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			productService.addProduct(product);
		} else {
			productService.updateProduct(product);
		}		
		return new ModelAndView("redirect:/admin");
	}
	
	@RequestMapping(value = "/newProduct", method = RequestMethod.GET)
	public ModelAndView newProduct(ModelAndView model) {
		Product product = new Product();
		model.addObject("product", product);
		model.setViewName("product_form");
		return model;
	}

	

	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public ModelAndView deleteProduct(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		productService.deleteProduct(productId);
		return new ModelAndView("redirect:/product_list");
	}

	@RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	public ModelAndView editProduct(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Product product= productService.getProduct(productId);
		ModelAndView model = new ModelAndView("update_product");
		model.addObject("product", product);
		return model;
	}
}
