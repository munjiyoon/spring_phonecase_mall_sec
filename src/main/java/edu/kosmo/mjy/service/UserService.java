package edu.kosmo.mjy.service;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@NoArgsConstructor
@Service
public class UserService {

	@Inject
	private BCryptPasswordEncoder passEncoder;

	@Inject
	private UserMapper userMapper;

	//@Transactional(rollbackFor = Exception.class)
	public void addUser(UserVO userVO) {
							
		String password = userVO.getPassword();
		
		String encode = passEncoder.encode(password);

		userVO.setPassword(encode);

		userMapper.insertUser(userVO);
		userMapper.insertAuthorities(userVO);
		
		
	}
}
