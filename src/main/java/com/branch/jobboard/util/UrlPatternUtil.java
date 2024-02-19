package com.branch.jobboard.util;

import java.util.ArrayList;
import java.util.List;

public class UrlPatternUtil {
	
	public Tuple<String, List<Object>> patternMatch(String url){
		List<String> chagePaths = new ArrayList<String>();
		List<Object> matchDatas = new ArrayList<Object>();
		
		if(url.equals("/")) {
			return new Tuple<String, List<Object>>(url, matchDatas);
		}
		
		String[] paths = url.split("/");
		
		for(String str: paths) {
			if(str.matches("^\\d+$")) {
				chagePaths.add("{no}");
				matchDatas.add(Long.parseLong(str));
			}
			else {
				chagePaths.add(str);
			}
		}
		
		return new Tuple<String, List<Object>>(String.join("/", chagePaths), matchDatas);
	}
}
