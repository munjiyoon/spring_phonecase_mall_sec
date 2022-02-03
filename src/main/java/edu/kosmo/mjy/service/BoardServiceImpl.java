package edu.kosmo.mjy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kosmo.mjy.mapper.BoardMapper;
import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.page.Criteria;
import edu.kosmo.mjy.vo.BoardVO;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> getList() {
		
		return boardMapper.getList();
	}

	@Override
	public BoardVO get(int bid) {
		return boardMapper.read(bid);
	}

	@Override
	public void insert(BoardVO board) {
		boardMapper.insert(board);
		
	}

	@Override
	public void modify(BoardVO board) {
		boardMapper.insert(board);
		
	}

	@Override
	public void delete(int bid) {
		boardMapper.delete(bid);
		
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		log.info("getTotal() ..");
		return boardMapper.getTotalCount();
	}

	@Override
	public List<BoardVO> getList(Criteria criteria) {
		log.info("getList() ..");
		return boardMapper.getListWithPaging(criteria);
	}
}
