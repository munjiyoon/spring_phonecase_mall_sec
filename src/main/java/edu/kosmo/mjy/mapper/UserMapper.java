package edu.kosmo.mjy.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.mjy.vo.UserVO;



@Mapper
public interface UserMapper {
	
	public UserVO getUser(String username);	
	
	@Insert("insert into member(userid,password,phone,age,name) values(#{userid},#{password},#{phone},#{age},#{name})")
	public int insertUser(UserVO userVO);

	@Insert("insert into authoritys (userid,authority) values(#{userid},'ROLE_USER')")
	public void insertAuthorities(UserVO UserVO);

	
}
