package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.pojo.ExamData;

public interface ExamDataMapper {
	public List<ExamData> sele(@Param("cname")String nn,@Param("index")int q);
	public int count(@Param("cname")String nn);
}
