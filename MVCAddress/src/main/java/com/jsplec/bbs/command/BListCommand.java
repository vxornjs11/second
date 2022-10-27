package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// Database에서 정보 가져오기
		String queryName = request.getParameter("query");
		String queryContent = request.getParameter("content");
		System.out.println(queryContent);
		System.out.println(queryName);
		 if(queryName == null){
		    	queryName ="address";
		    	queryContent = "";
		    }
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.list(queryName,queryContent);
		request.setAttribute("list", dtos);
	}

}