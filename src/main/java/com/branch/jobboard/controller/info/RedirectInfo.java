package com.branch.jobboard.controller.info;

import java.util.Map;

import lombok.Getter;
import lombok.ToString;

@Getter @ToString
public class RedirectInfo {

    public static final int FORWARD = 0;
    public static final int SEND_JSON = 1;
    public static final int REDIRECT = 2;

    private final Map<String, Object> map;
    private final String path;
    private final int type;

    public RedirectInfo(String path, int type) {
        this.path = path;
        this.type = type;
        this.map = null;
    }

    public RedirectInfo(Map<String, Object> map, int type) {
        this.map = map;
        this.type = type;
        this.path = null;
    }
}
