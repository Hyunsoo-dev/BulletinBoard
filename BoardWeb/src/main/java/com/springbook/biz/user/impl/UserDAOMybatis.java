package com.springbook.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.user.UserVO;

@Repository
public class UserDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//ȸ������
	public void insertUser(UserVO vo) {
		System.out.println("Mybatis �� insertUser() ��� ó��");
		mybatis.insert("UserDAO.insertUser", vo);
	}
	
	//�α��� 
	public UserVO getUser(UserVO vo) {
		System.out.println("Mybatis �� getUser() ��� ó��");
		return (UserVO)mybatis.selectOne("UserDAO.getUser", vo);
	}
	

}
