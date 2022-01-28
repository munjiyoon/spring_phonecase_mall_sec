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
PRODUCTID    NOT NULL NUMBER        
PRODUCTNAME           VARCHAR2(50)  
PRODUCTPRICE          NUMBER        
PRODUCTDES            VARCHAR2(100) 
PRODUCTSTOCK          NUMBER
*/
public class ProductVO {

	private Integer productid;
	private String productname;
	private Integer productprice;
	private String productdes;
	private int productstock;
	
}
