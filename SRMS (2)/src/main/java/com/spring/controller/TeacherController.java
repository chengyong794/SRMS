package com.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.bean.TeacherBean;
import com.spring.bean.TeacherBean;
import com.spring.service.TeacherService;
import com.spring.service.core.BaseService;

@Controller
@RequestMapping(value = "/teacher")
public class TeacherController {
	@Autowired
	public BaseService<TeacherBean> teacherService;
	

	ModelAndView mav=null;
	@RequestMapping("/list")
	public ModelAndView list(){
		List<TeacherBean> listofteacher=teacherService.list(null);
		mav=new ModelAndView("teacherlist");
		mav.addObject("listofteacher",listofteacher);
		return mav;
	}
	@RequestMapping("/save")
	public void addteacher(TeacherBean teacher,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		if (teacherService.save(teacher)==0) {
			out.print("<script language=\"javascript\">alert('ÃÌº” ß∞‹£¨«ÎºÏ≤È ‰»Î');window.location.href='list'</script>");
		}else {
			response.sendRedirect("list");
		}
//		teacherService.save(teacher);
//		response.sendRedirect("list");
	}
	@RequestMapping("/delete")
	public void delteacher(String dno,HttpServletResponse response) throws IOException{
		
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		if (teacherService.delete(dno)==0) {
			out.print("<script language=\"javascript\">alert('…æ≥˝ ß∞‹');window.location.href='list'</script>");
		}else {
			response.sendRedirect("list");
		}

	}
	@RequestMapping("/update")
	public void upteacher(TeacherBean teacher,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		if (teacherService.update(teacher)==0) {
			out.print("<script language=\"javascript\">alert('–ﬁ∏ƒ ß∞‹£¨«ÎºÏ≤È ‰»Î');window.location.href='list'</script>");
		}else {
			response.sendRedirect("list");
		}
//		response.sendRedirect("list");
	}
}