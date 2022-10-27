package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CharacterTest01")
public class CharacterTest01 extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CharacterTest01() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset = utf-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");

		String[] food = request.getParameterValues("food");

		out.println("<h1>성격 테스트</h1>");
		out.println(name + "님의 성격 테스트 결과 <br>");
		out.println(color + "색을 좋아하는 당신은");
		out.println(animal + " 그리고");
		for (int i = 0; i < food.length; i++) {
			if (i < food.length - 1) {
				out.println(food[i] + "과");
			} else {
				out.println(food[i] + "을");
			}
		}
		out.println("좋아하는 성격 입니다.");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	


}
