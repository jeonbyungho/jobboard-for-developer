package com.branch.jobboard.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.branch.jobboard.auth.UserRule;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebFilter(filterName = "authorizationFilter")
public class AuthorizationFilter implements Filter{
	
	Map<String, UserRule[]> auths;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		ServletContext sc = filterConfig.getServletContext();
		this.auths = new HashMap<String, UserRule[]>();
		
		this.auths.put(sc.getInitParameter("member_login"), new UserRule[] {UserRule.GUST});
		this.auths.put(sc.getInitParameter("jobpost_write"), new UserRule[] {UserRule.COMPANY});
		
		log.info("{} 초기화",filterConfig.getFilterName());
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		String url = (String) req.getAttribute("url");
		UserRule[] rules = this.auths.get(url);
		
		if(rules == null) {
			chain.doFilter(request, response);
			return;
		}
		
		for(UserRule r:rules) {
			log.debug("User Rule : {}",r.name());
		}
		
		chain.doFilter(request, response);
	}
}
