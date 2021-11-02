package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.cost;

public interface costMapper {
	public List<cost> select(@Param("name")String nn,@Param("index")int index);
	public List<cost> cost();
	public int count(@Param("name")String nn);
	public int del(@Param("n")int nn);
	public int upd(cost cost);
	public cost hid(@Param("id")int nn);
}
