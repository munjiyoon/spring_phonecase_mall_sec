package edu.kosmo.mjy.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString

/*
USER_ID   NOT NULL VARCHAR2(20) 
AUTHORITY          VARCHAR2(50)*/
public class AuthVO {
	private String userid;
	private String authority;
}
