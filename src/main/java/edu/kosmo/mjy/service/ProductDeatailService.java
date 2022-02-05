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

public interface ProductDeatailService {
	
	//상세 페이지 조회 상품 정보 얻기
	//http://localhost:8282/ex/admin/productView?productid=3
	public ProductVO getProductInfo(int productid);
	
	
}
