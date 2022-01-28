package edu.kosmo.mjy.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping(value = "/admin*")
public class AdminController {
	
	@GetMapping("/adminHome")
	public void adminHome() {
		log.info("adminHome..");
	}
	
	@GetMapping("/enroll")
	public void enroll() {
		log.info("enroll페이지 진입");
	}
	
}
