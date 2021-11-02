package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Bill;

public interface BillMapper {
	public List<Bill> sel(@Param("sn")String nn,@Param("index")int q);
	public int cou(@Param("sn")String nn);
	public int add(Bill bill);
}
