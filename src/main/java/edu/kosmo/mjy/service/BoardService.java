package edu.kosmo.mjy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.page.Criteria;
import edu.kosmo.mjy.vo.BoardVO;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

public interface BoardService {
	//board list출력
	List<BoardVO> getList();
	BoardVO get(int bid);
	void insert(BoardVO board);//공지사항 작성
	void modify(BoardVO board);//공지사항 수정
	void delete(int bid);//공지사항 삭제
	
	
	//페이징 처리 함수 (위에랑똑같은거기때문에 함수 오버로딩을 적용시켰다)
	public int getTotal();
	public List<BoardVO> getList(Criteria criteria);
}
