package com.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.dao.costMapper;
import com.pojo.Userstu;
import com.pojo.cost;
import com.util.PageUtil;

@Controller
public class CostController {
	@Resource
	costMapper dao;
	
	@RequestMapping("/costc")
	public String get(){
		return "expenses";
	}
	@RequestMapping(value="/selectc",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	@ResponseBody
	public String getlist(Integer index,String name){
		name=name==null?"":name;
		index=index==null?1:index;
		int num=dao.count("%"+name+"%");
		int count=num%10==0?num/10:num/10+1;
		List<cost> list=dao.select("%"+name+"%",(index-1)*10);
		PageUtil page=new PageUtil(new Integer(index),list,count);
		String json = JSONArray.toJSONString(page);
		return json;
	}
	@RequestMapping(value="/delc",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getList1(int id){
		return  JSONArray.toJSONString(dao.del(id));
		
	 }
	@RequestMapping("/updc")
	public String upd(int id,Map map){
		ModelAndView and=new ModelAndView();
		cost list=dao.hid(id);
		map.put("list", list);
		return "add-expenses";
	}
	@RequestMapping(value="/updac",method=RequestMethod.POST)
	public String upda(cost cost){
		int sss = dao.upd(cost);
		if(sss>0){
			return "expenses"; 
		}else {
			return "upda";
		}
	}
}
