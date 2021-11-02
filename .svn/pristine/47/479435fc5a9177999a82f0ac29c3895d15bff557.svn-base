package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.dao.CourseMapper;
import com.pojo.Course;

@Controller
public class CourseController {
	@Resource
	CourseMapper dao;
	//²éÑ¯Êý¾Ý
	@RequestMapping(value="/selec",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
		@ResponseBody
		public Object getList(String date){
			List<Course> list = dao.list(date);
			String json = JSONArray.toJSONString(list);
			return json;
		}
}
