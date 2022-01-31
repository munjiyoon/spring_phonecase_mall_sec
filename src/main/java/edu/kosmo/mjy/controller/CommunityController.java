package edu.kosmo.mjy.controller;

import java.util.List;

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
import edu.kosmo.mjy.service.BoardService;
import edu.kosmo.mjy.vo.BoardVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@RestController
@RequestMapping("/community/*")
public class CommunityController {

	@Autowired
	BoardService boardService;
	
	@GetMapping("/board")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("community/board");
		mav.addObject("list", boardService.getList());

		return mav;
	}
	
	//게시판 컨텐츠 조회(1개조회)
	@GetMapping("/board/{bid}")
	public ModelAndView community_content_view(BoardVO boardVO,ModelAndView mav) {
		
		log.info("community_content_view..");
		
		mav.setViewName("community/community_content_view");
		mav.addObject("content_view", boardService.get(boardVO.getBid()));

		log.info("boardservice :" +  boardService.get(boardVO.getBid()));
		
		return mav;
	}
	
	
	
	
	
	
	
	

}
