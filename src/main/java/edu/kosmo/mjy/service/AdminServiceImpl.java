package edu.kosmo.mjy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.mjy.mapper.AdminMapper;
import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.vo.ProductVO;
import edu.kosmo.mjy.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public void productRegister(ProductVO productVO) {
		adminMapper.productEnroll(productVO);
	}

	@Override
	public List<ProductVO> getProductList() {
		// TODO Auto-generated method stub
		return adminMapper.getProductList();
	}

	@Override
	public ProductVO productView(int productid) {
		return adminMapper.read(productid);
	}

	@Override
	public void modify(ProductVO productVO) {
		adminMapper.update(productVO);
		
	}

	@Override
	public void delete(int productid) {
		adminMapper.delete(productid);
		
	}
}
