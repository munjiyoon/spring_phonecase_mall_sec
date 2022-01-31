package edu.kosmo.mjy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.mjy.vo.BoardVO;





@Mapper
public interface BoardMapper {
	List<BoardVO> getList(); //전체화면 리턴
	BoardVO read(int bid);
		
}
