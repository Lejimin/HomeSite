package com.javalec.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginOK
 */
@WebServlet("/LoginOK")
public class LoginOK extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginOK() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		doAction(request,response);
	}

	private void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String strID = request.getParameter("id");
		String strPW = request.getParameter("pw");
		
		System.out.println(strID+"&"+strPW);
		String strQuery = String.format("select * from jointbl where id='%s' and pw='%s'", strID, strPW);
		System.out.println(strQuery);
		
		
		Connection connect=null;
		Statement statement=null;
		ResultSet resultSet;
		
		try {
			String jdbcDriver = "com.mysql.cj.jdbc.Driver";
			String URL = "jdbc:mysql://localhost:3330/webdb?" + "useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
			String dbUser = "root";
			String dbPass = "1234";
			
			Class.forName(jdbcDriver);
			connect = DriverManager.getConnection(URL, dbUser, dbPass);
			statement = connect.createStatement();
			resultSet = statement.executeQuery(strQuery); //select 문의 결과를 가져옴
			
			resultSet.next(); //처음결과로 이동 
			String strName = resultSet.getString("name");
			String strEmail = resultSet.getString("email");
			String strAddr = resultSet.getString("addr");
		
			
			if(strName!=null) {
				HttpSession httpsession = request.getSession();
				
				httpsession.setAttribute("name", strName);
				httpsession.setAttribute("email", strEmail);
				httpsession.setAttribute("addr", strAddr);
				
				response.sendRedirect("Home.jsp");
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
	}
}
