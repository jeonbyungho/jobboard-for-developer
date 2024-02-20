package com.branch.jobboard.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.branch.jobboard.service.Tuple;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebFilter(filterName = "urlPatternMatchFilter")
public class UrlPatternMatchFilter implements Filter{
	
	/**
	 * @param url HttpServletRequest으로부터 얻어낸 요청 URL
	 * @return x = 컨트롤러와 매핑된 URL 주소, y = 요청 URL으로부터 얻어낸 데이터 리스트
	 * */
	public Tuple<String, List<Object>> patternMatch(String url){
		// 매핑된 컨트롤러를 찾기 위한 URL 형태의 정보를 담은 리스트
		List<String> identiPaths = new ArrayList<String>();
		// URL으로부터 얻어낸 동적인 데이터 리스트
		List<Object> matchDatas = new ArrayList<Object>();
		
		// 요청 URL이 "/"인 경우, 즉시 원본 url와 빈 리스트를 내보냅니다.
		if(url.equals("/")) {
			return new Tuple<String, List<Object>>(url, matchDatas);
		}
		
		// 요청 URL을 분석하기 위해 "/"별로 경로를 나눕니다.
		String[] paths = url.split("/");
		
		/* 나눈 경로별로 정수 여부를 판별합니다.
		 * 만약 정수라면 matchDatas에 해당 정수 값을 추가하고 identiPaths에 '{no}' 추가합니다.
		 * 정수가 아니라면 문자열 값 그대로 identiPaths에 추가합니다.
		 */
		for(String str: paths) {
			if(str.matches("^\\d+$")) {
				identiPaths.add("{no}");
				matchDatas.add(Long.parseLong(str));
			}
			else {	identiPaths.add(str);}
		}
		
		/* 요청 URL를 통해 구성한 identiPaths를 하나의 문자열로 반환하고
		/* URL로부터 추출한 데이터 리스트(matchDatas)도 반환합니다.
		 */
		return new Tuple<String, List<Object>>(String.join("/", identiPaths), matchDatas);
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		
		// 요청 URL를 매핑된 컨트롤러들을 찾기 위한 형태로 반환합니다.
		String url = req.getServletPath();
		Tuple<String, List<Object>> urlPattern = patternMatch(url);
		
		/* 요청 URL를 분석한 결과를 요청 객체에 담아냅니다.
		 * 컨트롤러에서 요청에 따른 알맞은 Controller를 찾아내거나 
		 * 게시판 페이지별로 식별하기 위한 데이터로 활용됩니다.
		 */
		req.setAttribute("url", urlPattern.getX());
		req.setAttribute("urlInfo", urlPattern.getY());
		
		log.debug(urlPattern.toString());
		chain.doFilter(request, response);
	}
}
