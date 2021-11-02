package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.dao.HolidayMapper;
import com.pojo.Holiday;

@Controller
public class HolidayControler {
	@Resource
	HolidayMapper dao;
	
	@RequestMapping(value="/holiday",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getList(){
		List<Holiday> list=dao.list();
		String json = JSONArray.toJSONString(list);
		return json;
	 }
}
