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
import com.pojo.Bill;
import com.pojo.Userstu;
import com.util.PageUtil;

@Controller
public class BillController {
	@Resource
	BillMapper dao;
	//·ÖÒ³
	@RequestMapping(value="/selBill",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getList(String index,String name){
		name=name==null?"":name;
		index=index==null?"1":index;
		int coun=dao.cou("%"+name+"%");
		int count=coun%10==0?coun/10:coun/10+1;
		List<Bill> list=dao.sel("%"+name+"%", (new Integer(index)-1)*10);
		PageUtil page=new PageUtil(new Integer(index),list,count);
		String json = JSONArray.toJSONString(page);
		return json;
	 }
	//Ôö¼Ó
	@RequestMapping(value="/addBill",method=RequestMethod.POST)
		public ModelAndView addqw(Bill b){
			ModelAndView and=new ModelAndView();
				dao.add(b);
				and.setViewName("skill");
				return and;
			}
}
