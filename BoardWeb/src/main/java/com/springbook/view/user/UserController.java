package com.springbook.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.biz.user.impl.UserService;

@Controller
public class UserController {
	/*
	 * User 컨트롤러 통합
	*/
	
	@Autowired
	private UserService userService;
	
	
	//로그인 컨트롤러
	@RequestMapping(value="/login.do" ,method=RequestMethod.POST)
	public String login(UserVO vo,UserDAO userDAO,HttpSession session){
		System.out.println("로그인 처리");
		
		UserVO user = userService.getUser(vo);
		
		
		if(user != null) {
			session.setAttribute("userName", user.getName());
			return "getBoardList.do";
		}else {
			return "login.jsp";
		}
	
	}
	//로그아웃 컨트롤러 
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session){
		
		session.invalidate();
		
		
		return "login.jsp";
	}
	
	//회원가입 컨트롤러
	@RequestMapping(value="join.do",method=RequestMethod.POST)
	public String join(UserVO vo) {
		userService.insertUser(vo);
		return "login.jsp";
	}
}
