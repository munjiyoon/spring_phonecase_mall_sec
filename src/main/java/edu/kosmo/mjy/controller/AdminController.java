package edu.kosmo.mjy.controller;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.kosmo.mjy.mapper.AdminMapper;
import edu.kosmo.mjy.service.AdminService;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping(value = "/admin*")
public class AdminController {

	@Autowired
	AdminService adminService;
	
	// 상품 삭제
	@GetMapping("/delete")
	public String delete(ProductVO productVO, Model model) {

		log.info("delete() ..");

		adminService.delete(productVO.getProductid());

		log.info("productVO : " + productVO);

		return "redirect:productList";

	}

	

	// 상품 수정
	@PostMapping("/modify")
	public String modify(ProductVO productVO, Model model) {

		log.info("modify() ...");
		System.out.println("ProductVO:" + productVO);

		adminService.modify(productVO);

		return "redirect:productList";

	}

	// 상품상세보기(수정과 삭제)
	@RequestMapping(value = "/productView", method = RequestMethod.GET)
	public String productView(Model model, ProductVO productVO) {

		log.info("productViewGet()..");
		log.info("ProductVO:" + productVO);

		int bid = productVO.getProductid();
		model.addAttribute("productView", adminService.productView(bid));

		return "admin/productView";
	}

	// 상품목록
	@RequestMapping(value = "/productList", method = RequestMethod.GET)
	public String productListGet(Model model) {

		log.info("productListGet()..");

		model.addAttribute("productList", adminService.getProductList());

		return "admin/productList";
	}

	// 상품등록
	@PostMapping("/enroll")
	public String enrollProduct(ProductVO productVO) {
		log.info("enrollProduct()..");
		log.info("ProductVO:" + productVO);
		adminService.productRegister(productVO);

		return "redirect:/admin/adminHome";
	}

	@GetMapping("/adminHome")
	public void adminHome() {
		log.info("adminHome..");
	}

	@GetMapping("/enroll")
	public void enroll() {
		log.info("enroll페이지 진입");
	}

}
