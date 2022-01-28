package edu.kosmo.mjy.controller;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	//상품등록
	//localhost:8282/mjy/admin/enroll
	@PostMapping("/enroll")
	public String enrollProduct(ProductVO productVO) {
		log.info("enrollProduct()..");
		log.info("ProductVO:"+ productVO);
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
