package edu.kosmo.mjy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

public interface AdminService {
	//상품등록
	public void productRegister(ProductVO productVO);
	
	//상품목록
	public List<ProductVO> getProductList();
	
	//상품조회
	public ProductVO productView(int productid);
	
	//상품 수정
	public void modify(ProductVO productVO);
		
	//상품 삭제
	public void delete(int productid);
	
	
}
