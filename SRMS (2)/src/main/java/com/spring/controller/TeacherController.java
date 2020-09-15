package com.spring.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.bean.DeptBean;
import com.spring.bean.TeacherBean;
import com.spring.service.TeacherService;
import com.spring.service.core.BaseService;

@Controller
@RequestMapping(value = "/teacher")
public class TeacherController {
	@Autowired
	public BaseService<TeacherBean> teacherService;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(TeacherBean teacherBean,HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
			if(teacherService.loginTeacher(teacherBean)!=null) {
				request.getSession().setAttribute("name", teacherBean.getName());
				List<TeacherBean> list = teacherService.list(teacherBean);
				model.addObject("listofteacher", list);
				model.setViewName("teacherlist");
				return model;
			}else {
				model.addObject("tip", "登陆失败");
				model.setViewName("login");
				return model;
			}			
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("tno") String tno) {
		ModelAndView model = new ModelAndView();
		
            teacherService.delete(tno);
            
			List<TeacherBean> list = teacherService.list(
					teacherService.find(tno)
					);
			model.addObject("listofteacher", list);
			model.setViewName("teacherlist");
			return model;
	}
	
	@RequestMapping("/update")
	public ModelAndView update(TeacherBean teahcerBean) {
		ModelAndView model = new ModelAndView();
		
		   teacherService.update(teahcerBean);
            
			List<TeacherBean> list = teacherService.list(
					teahcerBean
					);
			model.addObject("listofteacher", list);
			model.setViewName("teacherlist");
			return model;
	}
	
	@RequestMapping("/save")
	public ModelAndView save(TeacherBean teahcerBean) {
		ModelAndView model = new ModelAndView();
		
		   teacherService.save(teahcerBean);
            
			List<TeacherBean> list = teacherService.list(
					teahcerBean
					);
			model.addObject("listofteacher", list);
			model.setViewName("teacherlist");
			return model;
	}
}
