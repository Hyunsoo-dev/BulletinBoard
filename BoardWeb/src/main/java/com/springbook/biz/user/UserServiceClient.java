package com.springbook.biz.user;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springbook.biz.user.impl.UserService;

public class UserServiceClient {
	public static void main(String[] args) {
		AbstractApplicationContext container = new GenericXmlApplicationContext("ApplicationContext.xml");
		UserService userService = (UserService)container.getBean("userService");
		
		UserVO vo = new UserVO();
		vo.setId("test123");
		vo.setPassword("test123");
		
		UserVO user = userService.getUser(vo);
		if(user != null) {
			System.out.println(user.getName() + "님 환영합니다.");
		}else {
			System.out.println("로그인 실패");
		}
		
		container.close();
	}
}
