package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.BranchDAO;
import com.dto.CompanyDTO;

public class CompanyInsertAction extends ExcuteAction {
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		BranchDAO bdao = new BranchDAO();
		CompanyDTO cdto = new CompanyDTO();
		
		cdto.setCompany_no(req.getParameter("company_no"));
		cdto.setPassword(req.getParameter("password"));
		cdto.setName(req.getParameter("name"));;
		cdto.setBirth(req.getParameter("birth"));
		cdto.setType("type");
		cdto.setEmployee_no("employee.no");
		cdto.setSale(req.getParameter("sale"));
		cdto.setCeo(req.getParameter("ceo"));
		cdto.setUrl(req.getParameter("url"));
		cdto.setAddr(req.getParameter("addr"));
		cdto.setDetail_addr("detail_addr");
		
		setRedirect(true);
		
		if(bdao.write(bdto)) {
			// 성공 시
			setPath("/board/BoardWrite.bo");
		} else {
			// 실패
			setPath("/board/BoardWrite.bo");
		}
		
		return super.excute(req, resp);
	}
}
