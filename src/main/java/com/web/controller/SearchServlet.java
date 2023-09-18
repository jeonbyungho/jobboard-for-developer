package com.web.controller;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ArticleDAO;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 요청 파라미터에서 검색 조건(type, career) 가져오기
        int type = Integer.parseInt(request.getParameter("type"));	
        String career = request.getParameter("career");
        int cnt=0;

        // 검색 로직을 수행하고 결과 데이터를 가져옴
        System.out.println(type);
    	System.out.println(career);
    	ArticleDAO adao= new ArticleDAO();
    	List<Map<String, Object>> articlelist = adao.article_search(career,type);
    	cnt = adao.getSelectedCnt(career,type);
    	System.out.println(articlelist.toString());
        // 검색 결과를 HTML로 생성
        StringBuilder htmlBuilder = new StringBuilder();
//        htmlBuilder.append("<html>");
//        htmlBuilder.append("<head><title>검색 결과</title></head>");
//        htmlBuilder.append("<body>");
        for (Map<String, Object> list : articlelist) {
        	String link = request.getContextPath() + "/article/" + list.get("ID");
        	htmlBuilder.append("<tr onclick =\"location.href='"+ link +"'\"");
            htmlBuilder.append("onmouseover=\"this.style.background='#20C0B7'\"");
            htmlBuilder.append("onmouseout=\"this.style.background=''\">");
            htmlBuilder.append("<td>"+ list.get("R")+ "</td>");
            htmlBuilder.append("<th>"+ list.get("NAME")+ "</th>");
            htmlBuilder.append("<td>"+ list.get("TITLE")+ "</td>");
            htmlBuilder.append("<td>"+ list.get("CAREER")+ "</td>");
            htmlBuilder.append("<td>"+ list.get("SALARY")+ "</td>");
            htmlBuilder.append("<td>"+ list.get("ADREESS")+ "</td>");
            htmlBuilder.append("<td>"+ list.get("NEED_AMT")+ "</td>");
            htmlBuilder.append("</tr>");
        }

        // HTML 응답 전송
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write(htmlBuilder.toString());
    }
}
