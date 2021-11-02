package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Major;

public interface MajorMapper {
	public List<Major> subject();
	public int insert(Major ma);
	public int dele(@Param("id")String ia);
	public Major updsel(@Param("id")String inde);
}
