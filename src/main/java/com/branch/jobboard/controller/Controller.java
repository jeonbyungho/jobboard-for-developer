package com.branch.jobboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
    public String doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
    public String doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
}
