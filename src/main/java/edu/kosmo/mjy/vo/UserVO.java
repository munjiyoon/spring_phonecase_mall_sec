package edu.kosmo.mjy.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString

/*
USERID   NOT NULL VARCHAR2(20) 
PASSWORD NOT NULL VARCHAR2(20) 
PHONE             VARCHAR2(20) 
AGE               NUMBER       
MILIAGE           NUMBER       
NAME              VARCHAR2(50)*/
public class UserVO {

	private String userid;
	private String password;
	private String phone;
	private int age;
	private int miliage;
	private String name;
	
	
	private List<AuthVO> authList;
}
