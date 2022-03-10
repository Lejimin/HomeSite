package com.javalec.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.MemberInsert;
import com.javalec.ex.Service;
import com.javalec.ex.command.BCommand;
import com.javalec.ex.command.BContentCommand;
import com.javalec.ex.command.BDeleteCommand;
import com.javalec.ex.command.BListCommand;
import com.javalec.ex.command.BModifyCommand;
import com.javalec.ex.command.BReplyCommand;
import com.javalec.ex.command.BReplyViewCommand;
import com.javalec.ex.command.BWriteCommand;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		actionDo(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI(); 
		String conPath = request.getContextPath();  
		String com = uri.substring(conPath.length());
		String viewPage = null;
		BCommand command = null;
		
		Service service;
	
		
		if(com.equals("/insert.do")) {
			service = new MemberInsert();
			service.execute(request, response);
			viewPage = "login.jsp";
		}else if(com.equals("/list.do")) {
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
		}else if(com.equals("/content_view.do")) {
			command = new BContentCommand();
			command.execute(request, response);
			viewPage = "content_view.jsp";
		}else if(com.equals("/modify.do")) {
			command = new BModifyCommand();
			command.execute(request, response);
			viewPage = "list.do"; //수정완료 후 목록으로 돌아가기 위함
		}else if(com.equals("/write_view.do")) {
			viewPage = "write_view.jsp";  //데이터를 따로 넘기진 않고 write_view.jsp 로 이동
		}else if(com.equals("/write.do")) {
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}else if(com.equals("/delete.do")) {
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}else if(com.equals("/reply_view.do")) {
			command = new BReplyViewCommand();
			command.execute(request, response);
			viewPage = "reply_view.jsp";
		}else if(com.equals("/reply.do")) {
			command = new BReplyCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request,response);
		
	}
}
