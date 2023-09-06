package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ArticleInsertAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("ArticleInsertAction");
		return super.excute(req, resp);
	}
}
