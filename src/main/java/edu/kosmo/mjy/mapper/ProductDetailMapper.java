package edu.kosmo.mjy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;



@Mapper
public interface ProductDetailMapper {
	


	//상세 페이지 조회 상품 정보 얻기
	//http://localhost:8282/ex/admin/productView?productid=3
	public ProductVO getProductInfo(int productid);
	
	
	
}
