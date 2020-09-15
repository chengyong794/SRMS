package com.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.bean.DeptBean;
import com.spring.service.core.BaseService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/dept")
public class DeptController {

	@Autowired
	BaseService<DeptBean> deptService;
	
	@RequestMapping(value="/listjson",produces = "application/json;charset=utf-8")
	@ResponseBody
	public String listjson() {
		List<DeptBean> list =deptService.list(null);
		JSONArray jsonArray = new JSONArray();
		for (int i = 0; i < list.size(); i++) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("dno", list.get(i).getDno());
			jsonObject.put("name", list.get(i).getName());
			jsonArray.add(jsonObject);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("data", jsonArray);
		return jsonObject.toString();
	}
	ModelAndView mav=null;
	@RequestMapping("/list")
	public ModelAndView list(){
		List<DeptBean> listofdept=deptService.list(null);
		mav=new ModelAndView("deptlist");
		mav.addObject("listofdept",listofdept);
		return mav;
	}
	@RequestMapping("/save")
	public void adddept(DeptBean dept,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		if (deptService.save(dept)==0) {
			out.print("<script language=\"javascript\">alert('ÃÌº” ß∞‹£¨«ÎºÏ≤È ‰»Î');window.location.href='list'</script>");
		}else {
			response.sendRedirect("list");
		}
//		deptService.save(dept);
//		response.sendRedirect("list");
	}
	@RequestMapping("/delete")
	public void deldept(String dno,HttpServletResponse response) throws IOException{
		
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		if (deptService.delete(dno)==0) {
			out.print("<script language=\"javascript\">alert('…æ≥˝ ß∞‹');window.location.href='list'</script>");
		}else {
			response.sendRedirect("list");
		}

	}
	@RequestMapping("/update")
	public void updept(DeptBean dept,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		if (deptService.update(dept)==0) {
			out.print("<script language=\"javascript\">alert('–ﬁ∏ƒ ß∞‹£¨«ÎºÏ≤È ‰»Î');window.location.href='list'</script>");
		}else {
			response.sendRedirect("list");
		}
//		response.sendRedirect("list");
	}
}
