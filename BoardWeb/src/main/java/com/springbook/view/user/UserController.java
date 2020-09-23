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
	 * User ��Ʈ�ѷ� ����
	*/
	
	@Autowired
	private UserService userService;
	
	
	//�α��� ��Ʈ�ѷ�
	@RequestMapping(value="/login.do" ,method=RequestMethod.POST)
	public String login(UserVO vo,UserDAO userDAO,HttpSession session){
		System.out.println("�α��� ó��");
		
		UserVO user = userService.getUser(vo);
		
		
		if(user != null) {
			session.setAttribute("userName", user.getName());
			return "getBoardList.do";
		}else {
			return "login.jsp";
		}
	
	}
	//�α׾ƿ� ��Ʈ�ѷ� 
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session){
		
		session.invalidate();
		
		
		return "login.jsp";
	}
	
	//ȸ������ ��Ʈ�ѷ�
	@RequestMapping(value="join.do",method=RequestMethod.POST)
	public String join(UserVO vo) {
		userService.insertUser(vo);
		return "login.jsp";
	}
}
