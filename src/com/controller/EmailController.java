package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.dao.EmailMapper;
import com.pojo.Email;
import com.pojo.Examresult;
import com.pojo.Userstu;
import com.util.PageUtil;

@Controller
public class EmailController {
	@Resource
	EmailMapper dao;
	@RequestMapping(value="/seleEm",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getList(String email,String bool,String love){
		List<Email> list = dao.seleEm(email, bool, love);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
	@RequestMapping(value="/seleEm1",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getList1(String email,String bool,String love){
		List<Email> list = dao.seleEm2(email, bool, love);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
	@RequestMapping(value="/addEmail",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object add(String send,String inbox,String head,String text){
		int list=dao.addEmail1(send, inbox);
		dao.addEmail2(head, text);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
	@RequestMapping(value="/judge",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object judge(int type,String email){
		Userstu list=dao.judge(type, email);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
	@RequestMapping(value="/sc",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object sc(int id){
		int list=dao.sc(id);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
	@RequestMapping(value="/bc",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object bc(int id){
		int list=dao.bc(id);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
	/*@RequestMapping(value="/Recent",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object Recent(int id){
		int list=dao.Recent(id);
		int list1=dao.Recentdel(id);
		int list2=dao.Recentdel1(id);
		String json = JSONArray.toJSONString(list);
		return json;
	 }*/
	@RequestMapping(value="/Recentdelall",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object show(String d){
		List<Integer> list=new ArrayList<Integer>();
		for (String  i : d.split(",")) {
			if(i!=null&&i!=""){
				try {
					list.add(new Integer(i));
				} catch (Exception e) {
					e.getMessage();
				}
				
			}
		}
		int list1=dao.Recentdel(list);
		int list2=dao.Recentdel1(list);
		return JSONArray.toJSONString(list1);
	}
	
	/*@RequestMapping(value="/Recentlydele",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object Recentlydele(int id){
		int list=dao.Recentlydele(id);
		int list1=dao.Recentlydele1(id);
		int list2=dao.Recentlydeledel(id);
		String json = JSONArray.toJSONString(list);
		return json;
	 }*/
	//Î´¶ÁÓÊ¼þ
	@RequestMapping(value="/seleaaa",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getRead(String email){
		List<Email> list = dao.readable(email);
		String json = JSONArray.toJSONString(list);
		System.out.println(json);
		return json;
	 }
	@RequestMapping(value="/seleaaas",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getRead1(String email){
		List<Email> list = dao.readabless(email);
		String json = JSONArray.toJSONString(list);
		System.out.println(json);
		return json;
	 }
	@RequestMapping("/updatt")
	 public String clearup(String email){
		dao.updaEmm(email);
		return "student-index";
	 }
	
	@RequestMapping(value="/seleEMaa",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getReadaa(String id){
		
		Email list = dao.readables(id);
		String json = JSONArray.toJSONString(list);
		System.out.println(json);
		return json;
	 }
	@RequestMapping(value="/seleEMaas",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getReadaas1(String id){
		Email list = dao.readablesa(id);
		String json = JSONArray.toJSONString(list);
		System.out.println(json);
		return json;
	 }
	@RequestMapping(value="/updbool",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getReadaas(String email){
		int a = dao.updaabool(email);
		String json = JSONArray.toJSONString(a);
		System.out.println(json);
		return json;
	 }
	
	@RequestMapping(value="/updbools",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object getReadaasax(String c){
		List<Integer> list=new ArrayList<Integer>();
		for (String  i : c.split(",")) {
			if(i!=null&&i!=""){
				try {
					list.add(new Integer(i));
				} catch (Exception e) {
					e.getMessage();
				}
				
			}
		}
		int a = dao.updaalove(list);
		String json = JSONArray.toJSONString(a);
		System.out.println(json);
		return json;
	 }
	@RequestMapping(value="/addEmail1",method=RequestMethod.GET,produces="application/json;charset=utf-8;")
	 @ResponseBody
	 public Object add1(String type,String head,String text){
		int a;
		if(type.equals("one")){
			a= 0;
		}else{
			a = 1;
		}
		int list=dao.addEmail3(a);
		dao.addEmail2(head, text);
		String json = JSONArray.toJSONString(list);
		return json;
	 }
}
