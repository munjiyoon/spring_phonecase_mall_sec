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
@RestController
@RequestMapping("/community/*")
public class CommunityController {

	@Autowired
	BoardService boardService;
	
	
	//@GetMapping("/board")
	//public ModelAndView list(ModelAndView mav) {
		//mav.setViewName("community/board");
		//mav.addObject("list", boardService.getList());

//		return mav;
	//}
	
		
	
	//게시판 컨텐츠 조회(1개조회)
	@GetMapping("/board/{bid}")
	public ModelAndView community_content_view(BoardVO boardVO,ModelAndView mav) {
		
		log.info("community_content_view..");
		
		mav.setViewName("community/community_content_view");
		mav.addObject("content_view", boardService.get(boardVO.getBid()));

		log.info("boardservice :" +  boardService.get(boardVO.getBid()));
		
		return mav;
	}
	
	@GetMapping("/boardEnroll")
	public ModelAndView boardlist(ModelAndView mav) {
		mav.setViewName("community/boardEnroll");
		mav.addObject("list", boardService.getList());

		return mav;
	}
	
	//게시판 컨텐츠 조회(1개조회)
		@GetMapping("/boardEnroll/{bid}")
		public ModelAndView communityEnroll_content_view(BoardVO boardVO,ModelAndView mav) {
			
			log.info("communityEnroll_content_view..");
			
			mav.setViewName("community/communityEnroll_content_view");
			mav.addObject("content_view", boardService.get(boardVO.getBid()));

			log.info("boardservice :" +  boardService.get(boardVO.getBid()));
			
			return mav;
		}
		
		//공지사항 수정 페이지
		@GetMapping("/boardWrite")
		public ModelAndView boardWrite(ModelAndView mav) {
			mav.setViewName("community/boardWrite");
			//mav.addObject("list", boardService.getList());

			return mav;
		}
		
		
		//게시판 글 생성	POST	/board
		@PostMapping("/write")
		public ModelAndView communityWrite(BoardVO boardVO,ModelAndView mav) {
			log.info("communityWrite()..");
			
			mav.setViewName("community/boardEnroll");
			mav.addObject("list", boardService.getList());
			
			boardService.insert(boardVO);
			
			return mav;		
			
		}
		
		//http://localhost:8282/ex/community/boardEnroll/1
		@PutMapping("/boardEnroll/{bid}")  //@RequestBody: 지금 json으로 들어오고 있는 서버쪽에서 객체로 받아오기 위한 어노테이션
		public ResponseEntity<String> community_update(@RequestBody BoardVO boardVO, Model model) {
			//ResponseEntity붙여주는 이유는 HttpStatus.OK , HttpStatus.BAD_REQUEST 사용하기 위함
			ResponseEntity<String> entity = null;
			log.info("boardEnroll_update.. boardVO" + boardVO);
			
			try {
				boardService.modify(boardVO);
				// 수정 성공하면 성공 상태메시지 저장
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				// 업데이트가 실패하면 실패 상태메시지 저장
				entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
			// 업데이트처리 HTTP 상태 메시지 리턴
			return entity;  

		}
		
		//http://localhost:8282/ex/community/boardEnroll/10
		@DeleteMapping("/boardEnroll/{bid}")
		public ResponseEntity<String> community_delete(BoardVO boardVO, Model model) {
			
			ResponseEntity<String> entity = null;
			log.info("community_delete..");
			System.out.println("delete()..");
			
			try {
				boardService.delete(boardVO.getBid());
				// 삭제가 성공하면 성공 상태메시지 저장
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				// 댓글 삭제가 실패하면 실패 상태메시지 저장
				entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
			// 삭제 처리 HTTP 상태 메시지 리턴
			return entity;

		}
		
		//페이징 처리
		@GetMapping("/board")
		public ModelAndView list(Criteria cri, ModelAndView mav) {
			
			log.info("list() ..");
			log.info("Criteria" + cri);
			
			mav.setViewName("community/board");
			mav.addObject("boardList", boardService.getList(cri));
			
			int total = boardService.getTotal();
			log.info("total" + total);
			mav.addObject("pageMaker",new PageVO(cri,total));
			
		
			return mav;
		
	
			
	
	
	
	
	
	
	
	
	
	
		}
}
