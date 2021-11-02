package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Exam;
import com.pojo.Examresult;
import com.pojo.Userstu;

public interface ExamResultMapper {

	public List<Examresult> er(@Param("ex")String nn,@Param("index")int qw);
	public int cou(@Param("ex")String nn);
	public List<Exam> exam();
	public int addexam(Examresult ex);
	public List<Userstu> selus(@Param("sn")String nn);
}
