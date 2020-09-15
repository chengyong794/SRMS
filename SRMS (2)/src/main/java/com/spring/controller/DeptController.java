package com.spring.controller;

import java.io.IOException;
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

@Controller
@RequestMapping("/dept")
public class DeptController {

	@Autowired
	BaseService<DeptBean> deptService;
	
//	@RequestMapping(value="/listDept",produces = "application/json;charset=utf-8")
//	@ResponseBody
//	public String list() {
//		List<DeptBean> list =deptServicce.list(new HashMap<String,Object>());
//
//		return "index";
//	}
	ModelAndView mav=null;
	@RequestMapping("/list")
	public ModelAndView list(){
		List<DeptBean> listofdept=deptService.list(null);
		mav=new ModelAndView("deptlist");
		mav.addObject("listofdept",listofdept);
		return mav;
	}
	@RequestMapping("/save")
	public void adddept(String dno,String name,String leader,String tel,HttpServletResponse response) throws IOException{
		DeptBean dpb=new DeptBean();
		dpb.setDno(dno);
		dpb.setName(name);
		dpb.setLeader(leader);
		dpb.setTel(tel);
		deptService.save(dpb);
		response.sendRedirect("list");
	}
	@RequestMapping("/delete")
	public void deldept(String dno,HttpServletResponse response) throws IOException{

		deptService.delete(dno);
		response.sendRedirect("list");
	}
	@RequestMapping("/update")
	public void updept(String dno,String name,String leader,String tel,HttpServletResponse response) throws IOException{
		DeptBean dpb=new DeptBean();
		dpb.setDno(dno);
		dpb.setName(name);
		dpb.setLeader(leader);
		dpb.setTel(tel);
		deptService.update(dpb);
		response.sendRedirect("list");
	}
}
