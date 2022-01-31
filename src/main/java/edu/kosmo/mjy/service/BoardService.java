package edu.kosmo.mjy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.vo.BoardVO;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

public interface BoardService {
	//board list출력
	List<BoardVO> getList();
	BoardVO get(int bid);
	
	
	
	
}
