package com.branch.jobboard.controller.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.branch.jobboard.controller.info.UriInfo;

public class RegexUtil {
    private static RegexUtil instance;

    private RegexUtil(){}

    public static RegexUtil getInstance(){
        if(instance == null){
            instance = new RegexUtil();
        }
        return instance;
    }

    public UriInfo urlLastNumber(String path){
        Pattern pattern = Pattern.compile("(^/.*/)(\\d+$)");
        Matcher matcher = pattern.matcher(path);
        
        UriInfo uri = new UriInfo();
        if(matcher.find()){
            uri.setUri(matcher.group(1));
            uri.setLastNo(Long.parseLong(matcher.group(2)));
        } else {
            uri.setUri(path);
        }
        return uri;
    }
}