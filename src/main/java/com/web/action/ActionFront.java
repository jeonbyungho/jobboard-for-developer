package com.web.action;

public class ActionFront {
	private String path;
	private boolean isRedirect;
	
	public ActionFront() {}
	public ActionFront(String path) {
		this.path = path;
	}
	public ActionFront(String path, boolean isRedirect) {
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
	
	
}
