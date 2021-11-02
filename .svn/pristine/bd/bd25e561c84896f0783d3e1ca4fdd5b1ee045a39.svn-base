package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.dao.ExamResultMapper;

import com.pojo.Exam;
import com.pojo.Examresult;
import com.pojo.Userstu;

import com.util.PageUtil;
@Controller
public class ExamResultController {
	@Resource
	ExamResultMapper dao;
	
	@RequestMapping(value="/selees",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getList(String index,String name){
		name=name==null?"":name;
		index=index==null?"1":index;
		int coun=dao.cou("%"+name+"%");
		int count=coun%10==0?coun/10:coun/10+1;
		List<Examresult> list=dao.er("%"+name+"%", (new Integer(index)-1)*10);
		PageUtil page=new PageUtil(new Integer(index),list,count);
		String json = JSONArray.toJSONString(page);
		return json;
	 }
	@RequestMapping(value="/selexam",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getexam(){
		List<Exam> list=dao.exam();
		String json = JSONArray.toJSONString(list);
		return json;
	 }
	@RequestMapping(value="/addexam",method=RequestMethod.POST)
		public ModelAndView upda(HttpSession session,Examresult ex){
			ModelAndView and=new ModelAndView();
				dao.addexam(ex);
				if(session.getAttribute("shen").equals("教师")){
					and.setViewName("teacher-student-exam");
				}else if(session.getAttribute("shen").equals("admin")){
					and.setViewName("exam");
				}
				return and;
			}
//查询所有的学生	
	
	@RequestMapping(value="/selus",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object sel(String sn){
		List<Userstu> list=dao.selus(sn);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
}
