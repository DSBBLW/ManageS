package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.dao.MajorMapper;
import com.pojo.Major;

@Controller
public class MajorController {
	@Resource
	MajorMapper dao;
	@RequestMapping(value="/subject",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	@ResponseBody
	public Object getList(){
		return JSONArray.toJSONString(dao.subject());
	}
	
	@RequestMapping("/insert")
	public String inserlist(HttpSession session,Major maj){
		dao.insert(maj);
		if(session.getAttribute("shen").equals("ΩÃ ¶")){
			return "teacher-subjects";
		}else if(session.getAttribute("shen").equals("admin")){
			return "subjects";
		}
		return "";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	@ResponseBody
	public Object getList(String index){
		return JSONArray.toJSONString(dao.dele(index));
	}
	@RequestMapping(value="/upsel",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	@ResponseBody
	public Object get(String index){
		return JSONArray.toJSONString(dao.updsel(index));
	}
}
