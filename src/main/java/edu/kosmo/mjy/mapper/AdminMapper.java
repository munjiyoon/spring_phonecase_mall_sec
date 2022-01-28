package edu.kosmo.mjy.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;



@Mapper
public interface AdminMapper {
	
	// 상품등록
	public void productEnroll(ProductVO productVO);

	
}
