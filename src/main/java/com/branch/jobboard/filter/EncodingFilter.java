package com.branch.jobboard.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebFilter(filterName = "encodingFilter", initParams = {
		@WebInitParam(name = "charset", value = "UTF-8")
})
public class EncodingFilter implements Filter{
	
	private String charset;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.charset = filterConfig.getInitParameter("charset");
		log.info("{} charset:'{}'",filterConfig.getFilterName(), this.charset);
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding(this.charset);
		response.setCharacterEncoding(this.charset);
		chain.doFilter(request, response);
	}
}
