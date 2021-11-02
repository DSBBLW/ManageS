package com.dao;


import org.apache.ibatis.annotations.Param;

import com.pojo.Login;
import com.pojo.Userstu;

public interface LoginMapper {
	public Login login(Login lo);
	public Userstu stu(@Param("id")int id);
	public int selid(@Param("id")int id,@Param("type")int ty);
	public int stuid(@Param("id")int id,@Param("type")int type);
	public int addlo(Login login);
	public int updpasss(@Param("u")String id,@Param("p")String type,@Param("id")int eid);
	public Login login1(@Param("userType")int id,@Param("phonenum")String ty,@Param("password")String ty1);
}	
