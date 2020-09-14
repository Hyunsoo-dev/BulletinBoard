package com.springbook.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

@Controller
public class LoginController{

	@RequestMapping(value="/login.do")
	public String login(UserVO vo,UserDAO userDAO){
		System.out.println("로그인 처리");
		
		UserVO user = userDAO.getUser(vo);
		
		
		if(user != null) {
			return "getBoardList.do";
		}else {
			return "login.jsp";
		}
	
	}

}
