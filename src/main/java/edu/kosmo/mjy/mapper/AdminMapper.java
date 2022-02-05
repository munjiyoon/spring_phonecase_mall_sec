package edu.kosmo.mjy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;



@Mapper
public interface AdminMapper {
	
	// 상품등록
	public void productEnroll(ProductVO productVO);

	//상품목록
	public List<ProductVO> getProductList();

	//상품 조회
	//http://localhost:8282/ex/admin/productView?productid=3
	public ProductVO read(int productid);
	
	//상품 수정
	public void update(ProductVO productVO);
	
	//상품 삭제
	public void delete(int productid);
	
	
}
