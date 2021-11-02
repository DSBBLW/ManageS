package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.dao.BillMapper;
import com.dao.ExamDataMapper;
import com.pojo.Bill;
import com.pojo.ExamData;
import com.util.PageUtil;

@Controller
public class ExamDataController {
	@Resource
	ExamDataMapper dao;
	//·ÖÒ³
	@RequestMapping(value="/selexamdata",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getList(String index,String name){
		name=name==null?"":name;
		index=index==null?"1":index;
		int coun=dao.count("%"+name+"%");
		int count=coun%10==0?coun/10:coun/10+1;
		List<ExamData> list=dao.sele("%"+name+"%", (new Integer(index)-1)*10);
		PageUtil page=new PageUtil(new Integer(index),list,count);
		String json = JSONArray.toJSONString(page);
		return json;
	 }
	
}
