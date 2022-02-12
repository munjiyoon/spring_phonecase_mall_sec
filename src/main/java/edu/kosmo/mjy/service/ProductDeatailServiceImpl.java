package edu.kosmo.mjy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.mjy.mapper.ProductDetailMapper;
import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
public class ProductDeatailServiceImpl implements ProductDeatailService {

	
	@Autowired
	ProductDetailMapper productDetailMapper;
	
	@Override
	public ProductVO getProductInfo(int productid) {
		
		return productDetailMapper.getProductInfo(productid);
	}
	
	
	
	
}
