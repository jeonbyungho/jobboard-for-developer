package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExcuteAction implements Action{
	
	private String path;
	private boolean isRedirect;
	
	public ExcuteAction() {}
	public ExcuteAction(String path) {
		this.path = path;
	}
	public ExcuteAction(String path, boolean isRedirect) {
		this.path = path;
		this.isRedirect = isRedirect;
	}
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		return new ActionFront(path, isRedirect);
	}

}
