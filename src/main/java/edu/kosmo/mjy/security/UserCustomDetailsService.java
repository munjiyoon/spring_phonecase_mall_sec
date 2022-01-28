package edu.kosmo.mjy.security;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.kosmo.mjy.mapper.UserMapper;
import edu.kosmo.mjy.vo.UserCustom;
import edu.kosmo.mjy.vo.UserVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


/*
 * username을 가지고 사용자 정보를 조회하고 session에 저장될 사용자 주체 정보인 
 * UserDetails를 반환하는 Interface다.
 */

@Log4j
@Service
public class UserCustomDetailsService implements UserDetailsService  {
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;

	@Override
	public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
		
		log.warn("Load User By UserVO number: " + userid);
		UserVO vo = userMapper.getUser(userid);

		log.warn("queried by UserVO mapper: " + vo);

		return vo == null ? null : new UserCustom(vo);		
	}
}