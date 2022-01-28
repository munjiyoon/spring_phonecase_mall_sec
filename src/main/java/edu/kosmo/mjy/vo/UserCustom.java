package edu.kosmo.mjy.vo;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
public class UserCustom extends User {
	
	@Setter(onMethod_ = @Autowired)
	private UserVO user;
	   
	public UserCustom(String userid, String password, Collection<? extends GrantedAuthority> authority) {
		super(userid, password, authority);
	}

	public UserCustom(UserVO user) {

		super(user.getUserid(), user.getPassword(), getAuth(user));

		this.user = user;
	}

	public static Collection<? extends GrantedAuthority> getAuth(UserVO memberVO) {

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (AuthVO auth : memberVO.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
		}

		return authorities;
	}
}
