package com.dev.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class FrontController extends HttpServlet {
	
	HashMap<String, Controller> list = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("controller init()");
		list = new HashMap<String, Controller>();
		
		list.put("/memberInsert.do", new MemberInsertContoller());
		list.put("/memberList.do", new MemberListConroller());
		list.put("/memberSearch.do", new MemberSearchConroller());
		list.put("/memberUpdate.do", new MemberUpdateConroller());
		list.put("/memberDelete.do", new MemberDeleteConroller());
		
		//로그인
		list.put("/login.do", new LoginController());
		//로그아웃
		list.put("/logout.do", new LogoutController());
		
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI(); // http://localhost:80/P20211208/memberInsert.do
		String context = req.getContextPath();
		String path = url.substring(context.length());
		System.out.println(path);
		
		Controller subCon = list.get(path);
		subCon.execute(req, resp);
	}
	
	

}
