package com.branch.jobboard.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebFilter(filterName = "authorizationFilter")
public class AuthorizationFilter implements Filter{
	
	List<String> anonymous;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.anonymous = new ArrayList<String>();
		ServletContext sc = filterConfig.getServletContext();
		log.info("{} 초기화",filterConfig.getFilterName());
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		
		chain.doFilter(request, response);
	}
}
