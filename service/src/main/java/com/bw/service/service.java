package com.bw.service;

import java.util.List;

import com.bw.bean.classes;
import com.bw.bean.student;

public interface service {
	public List<classes> sel();
	public List<student> list(int id);
}
