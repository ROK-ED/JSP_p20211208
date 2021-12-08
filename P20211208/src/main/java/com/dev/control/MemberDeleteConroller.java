package com.dev.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class MemberDeleteConroller implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 삭제 =>결과x 바로 초기화면
		String id = req.getParameter("id");
//		String passwd = req.getParameter("passwd");
//		String name = req.getParameter("name");
//		String mail = req.getParameter("mail");

		MemberVO vo = new MemberVO();
		vo.setId(id);
//		vo.setPasswd(passwd);
//		vo.setName(name);
//		vo.setMail(mail);

		// 수정작업DAO, Service
		MemberService service = new MemberService();
		
		req.setAttribute("member", service.delete(id));
		
		//memberDeleteOutput.jsp
		
		req.getRequestDispatcher("index.jsp").forward(req, res);

	}

}
