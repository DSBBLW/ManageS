package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Teacher;

public interface TeacherMapper {
	//查询
	
	public List<Teacher> list(@Param("index")int index,@Param("s")String s);
	//查询总条数
	public int count(@Param("s")String s);
	//按编号查询
	public Teacher updsel(@Param("id")String id);
	//修改
	public int updat(Teacher teacher);
	//删除
	public int dele(@Param("id")String id);
	//增加
	public int insert(Teacher teacher);
}
