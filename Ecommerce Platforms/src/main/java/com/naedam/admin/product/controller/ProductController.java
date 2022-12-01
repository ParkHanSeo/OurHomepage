package com.naedam.admin.product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.naedam.admin.option.model.service.OptionService;
import com.naedam.admin.option.model.vo.Option;
import com.naedam.admin.product.model.service.ProductService;
import com.naedam.admin.product.model.vo.Product;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/product")
@Slf4j
public class ProductController {
	@Autowired
   	private ProductService productService;
   	@Autowired
   	private OptionService optionService;

   	/**
   	 * 제품 => 리스트 조회
   	 * @return
   	 */
   	@GetMapping("/list")
   	public String productList() {
   		return "admin/product/productList";
   	}

   	/**
   	 * 제품 => 카테고리 리스트 조회
   	 * @return
   	 */
   	@GetMapping("/category")
   	public String productCategory() {
   		return "admin/product/productCategory";
   	}

   	/**
   	 * 제품 => 자주쓰는 옵션 리스트 조회
   	 * @param model
   	 * @return
   	 */
   	@GetMapping("/option")
   	public String productOption(Model model) {
   		List<Option> optionList = optionService.selectOptionList();
   		model.addAttribute("optionList", optionList);
   		return "admin/product/option";
   	}
   
   	/**
   	 * 제품 => 리스트 계층형 쿼리 조회
   	 * @param model
   	 * @param cteNo
   	 * @param bne_check
   	 * @param v_status
   	 */
   	@GetMapping("/list_sub")
   	public void list_sub(
		   Model model, 
		   @RequestParam(defaultValue = "0") String cteNo, 
		   @RequestParam(defaultValue = "null") String bne_check, 
		   @RequestParam(defaultValue = "null") String v_status) {
	   	Map<String, String> param = new HashMap<String, String>();
      	param.put("cteNo", cteNo);
      	param.put("bne", bne_check);
      	param.put("v_status", v_status);
      	param.put("keyword", "null");
      
      	Map<String, Object> map = productService.listSub(param);
      	model.addAttribute("cteNo",cteNo);
      	model.addAttribute("bne_check", bne_check);
      	model.addAttribute("v_status", v_status);
      	model.addAllAttributes(map);
   	}
   
	/**
	 * 제품 => 리스트 계층형 쿼리 조회
	 * @param model
	 * @param request
	 * @param cteNo
	 * @param bne_check
	 * @param v_status
	 * @return
	 */
   	@PostMapping("/list_sub")
   	public String post_list_sub(
		   Model model, 
		   HttpServletRequest request,
		   @RequestParam(defaultValue = "0") String cteNo, 
		   @RequestParam(defaultValue = "null") String bne_check, 
		   @RequestParam(defaultValue = "null") String v_status) {
	   Map<String, String> param = new HashMap<String, String>();
      	param.put("cteNo", cteNo);
      	param.put("bne", bne_check);
      	param.put("v_status", request.getParameter("field"));
      	param.put("keyword", request.getParameter("keyword"));
      
      	Map<String, Object> map = productService.listSub(param);

      	model.addAttribute("cteNo",cteNo);
      	model.addAttribute("bne_check", bne_check);
      	model.addAttribute("v_status", request.getParameter("field"));      
      	model.addAttribute("keyword", request.getParameter("keyword"));
      	model.addAllAttributes(map);
      	return "admin/product/list_sub";
   	}
   
	/**
	 * iframe의  tree_model.jsp를 위한 메소드
	 * @param request
	 * @param model
	 * @param stp
	 */
   	@GetMapping("/tree_model")
   	public void tree_model(HttpServletRequest request, Model model, String stp) {
   		String result = productService.treeModel(stp, request);
	  	model.addAttribute("result",result);
   	}

   	/**
   	 * 제품 => 리스트 선택삭제
   	 * @param request
   	 * @param redirectAttr
   	 * @return
   	 */
   	@PostMapping("/delete")
   	public String productDelete(HttpServletRequest request, RedirectAttributes redirectAttr) {
	   int result = productService.productDelete(request);
      	if(result > 0) {
    	  redirectAttr.addFlashAttribute("msg", "삭제되었습니다.");
      	}
      	return "redirect:/admin/product/list";
   	}
   
   	@PostMapping("/fillForm")
   	@ResponseBody
   	public List<Object> fillForm(String productNo) {
	   	List<Object> productInfo = productService.fillForm(productNo);
	   	return productInfo;
   	}

   	/**
   	 * 제품 => 카테고리 계층형 쿼리구조 리스트
   	 * @param cteNo
   	 * @param model
   	 */
   	@GetMapping("/productCategory_sub")
   	public void productCategory_sub(@RequestParam(defaultValue = "0") int cteNo, Model model) {
	   	Map<String, Object> map = productService.productCategorySub(cteNo);
	   	model.addAttribute("parentNo",cteNo);
	   	model.addAllAttributes(map);
   	}
   
   	/**
   	 * 제품 => 리스트 제품 등록
   	 * @param request
   	 * @param redirectAttr
   	 * @return
   	 */
   	@PostMapping("/insert")
   	public String insertProduct(HttpServletRequest request, RedirectAttributes redirectAttr) {      
	   	int result = productService.insertProduct(request);
       	// log.debug("product = {}", product);
       	if(result > 0) redirectAttr.addFlashAttribute("msg", "상품이 등록되었습니다.");
       	return "redirect:/admin/product/list";
   	}

   	/**
   	 * 제품 => 리스트 제품 수정
   	 * @param request
   	 * @param redirectAttr
   	 * @return
   	 */
   	@PostMapping("/update")
   	public String updateProduct(HttpServletRequest request, RedirectAttributes redirectAttr){
   		int result = productService.updateProduct(request);
   		if(result > 0) redirectAttr.addFlashAttribute("msg", "제품정보가 수정되었습니다.");
   		return "redirect:/admin/product/list";
   	}
   
   	/**
   	 * 제품 => 리스트 제품 복제
   	 * @param request
   	 * @param redirectAttr
   	 * @return
   	 */
	@PostMapping("/copy_product")
	public String copyProduct(HttpServletRequest request, RedirectAttributes redirectAttr) {
		int result = productService.copyProduct(request);
		if(result > 0) redirectAttr.addFlashAttribute("msg", "제품이 복제되었습니다.");
		return "redirect:/admin/product/list";
	}
    
	
}