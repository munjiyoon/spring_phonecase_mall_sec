package edu.kosmo.mjy.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import edu.kosmo.mjy.mapper.AdminMapper;
import edu.kosmo.mjy.page.Criteria;
import edu.kosmo.mjy.page.PageVO;
import edu.kosmo.mjy.service.AdminService;
import edu.kosmo.mjy.service.BoardService;
import edu.kosmo.mjy.vo.BoardVO;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping(value = "/main*")
public class MainController {

	@Autowired
	AdminService adminService;

	
	//http://localhost:8282/main/productDetail?productid=5
	// 상품상세보기(수정과 삭제)
	@RequestMapping(value = "/productDetail", method = RequestMethod.GET)
	public String productDetailGet(Model model, ProductVO productVO) {

		log.info("productDetailGet()..");
		log.info("ProductVO:" + productVO);

		int bid = productVO.getProductid();
		model.addAttribute("productView", adminService.productView(bid));

		return "main/productDetail";
	}
	
	//http://localhost:8282/ex/main/cartInsert
	//장바구니 페이지
	@PostMapping("/cartInsert")
	public String cartInsert(ProductVO productVO) {
		log.info("cartInsert()..");
		log.info("ProductVO:" + productVO);
		//adminService.productRegister(productVO);

		return "main/cartInsert";
	}
}