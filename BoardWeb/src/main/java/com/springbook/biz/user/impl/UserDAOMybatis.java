package com.springbook.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.user.UserVO;

@Repository
public class UserDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//회원가입
	public void insertUser(UserVO vo) {
		System.out.println("Mybatis 로 insertUser() 기능 처리");
		mybatis.insert("UserDAO.insertUser", vo);
	}
	
	//로그인 
	public UserVO getUser(UserVO vo) {
		System.out.println("Mybatis 로 getUser() 기능 처리");
		return (UserVO)mybatis.selectOne("UserDAO.getUser", vo);
	}
	

}
