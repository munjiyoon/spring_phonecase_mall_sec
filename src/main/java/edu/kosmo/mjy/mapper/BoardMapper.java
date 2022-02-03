package edu.kosmo.mjy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.mjy.page.Criteria;
import edu.kosmo.mjy.vo.BoardVO;





@Mapper
public interface BoardMapper {
	List<BoardVO> getList(); //전체화면 리턴
	BoardVO read(int bid);
	
	void insert(BoardVO board);//공지사항 작성
	void update(BoardVO board);//공지사항 수정
	void delete(int bid);//공지사항 삭제
	
	
	//페이징 처리 관련
	int getTotalCount();
	List<BoardVO> getListWithPaging(Criteria criteria);
}
