package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String sseq = request.getParameter("seq");
		BDao dao = new BDao();
		BDto dto = dao.contentView(sseq);
		
		request.setAttribute("content_view", dto);
	}

}
