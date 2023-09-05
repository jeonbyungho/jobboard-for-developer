package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AriticleAction extends ExcuteAction{
	
	public AriticleAction() {}

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String info = req.getPathInfo();
		System.out.println("Ariticle : " + info);
		
		int no = 0;
		if(info == null) {
			setPath("./resource/article-write.jsp");
			return super.excute(req, resp);
		} else {
			info = info.substring(1);
			no = Integer.parseInt(info);
			System.out.println(no);
		}
		
		req.setAttribute("no", no);
		setPath("../resource/article.jsp");
		
		return super.excute(req, resp);
	}
}
