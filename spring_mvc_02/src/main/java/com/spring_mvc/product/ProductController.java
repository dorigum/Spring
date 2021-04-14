package com.spring_mvc.product;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

// getParameter() / @RequestParam / Command 객체

@Controller
public class ProductController {
	@RequestMapping("/")
	public String indexView() {
		return "index"; // index.jsp
	}
	 
	@RequestMapping("/product/productForm")
	public String productFormView() {
		return "product/productForm"; // productForm.jsp
	}
	
	// getParameter()
	@RequestMapping("/product/newProduct")
	public String insertProduct(HttpServletRequest request, Model model) {
		String pno = request.getParameter("pno");
		String pname = request.getParameter("pname");
		String price = request.getParameter("price");
		
		model.addAttribute("pno", pno);
		model.addAttribute("pname", pname);
		model.addAttribute("price", price);
		
		return "product/productResult1"; // productResult1.jsp	
	}
	
	// @RequestParam
	@RequestMapping("/product/newProduct2")
	public String insertProduct2(@RequestParam("pno")String pno,
								 @RequestParam("pname")String pname,
								 @RequestParam("price")String price,
								 Model model) {
		
		model.addAttribute("pno", pno);
		model.addAttribute("pname", pname);
		model.addAttribute("price", price);
		
		return "product/productResult1";	// productResult1.jsp
	}
	
	// Command 객체
	@RequestMapping("/product/newProduct3")
	public String insertProduct3(Product product) {
		return "product/productResult2"; // productResult2.jsp
	}
	
	@RequestMapping("/product/newProduct4")
	public String insertStudent4(@ModelAttribute("prdInfo") Product product) {
		return "product/productResult3"; // productResult3.jsp
	}
}