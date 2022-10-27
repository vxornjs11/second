package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// interface는 abstract의 상위버전
public interface BCommand {
	public void execute(HttpServletRequest request, HttpServletResponse response);
	
	
	
} // End