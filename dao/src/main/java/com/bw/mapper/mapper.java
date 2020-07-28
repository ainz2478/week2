package com.bw.mapper;

import java.util.List;

import com.bw.bean.classes;
import com.bw.bean.student;

public interface mapper {
	public List<classes> sel();
	public List<student> list(int id);
}
