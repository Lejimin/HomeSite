package com.javalec.ex;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.MemberDao;
import com.javalec.ex.dto.MemberDto;

public class MemberInsert implements Service {

	@Override
	public ArrayList<MemberDto> execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao = MemberDao.getInstance();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		dao.insertMember(id, pw, name, email, addr);
		
		if(id.isEmpty()||pw.isEmpty()||name.isEmpty()||email.isEmpty()||addr.isEmpty()) {
			System.out.println("회원가입에 실패하였습니다.");
			try {
				response.sendRedirect("Join.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			System.out.println("회원가입에 성공하였습니다.");
			try {
				response.sendRedirect("login.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return null;
		
	}

}
