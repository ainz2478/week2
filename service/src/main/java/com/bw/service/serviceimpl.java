package com.bw.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.bean.classes;
import com.bw.bean.student;
import com.bw.mapper.mapper;
@Service
public class serviceimpl implements service {
@Resource
private mapper mapper;
	public List<classes> sel() {
		// TODO Auto-generated method stub
		return mapper.sel();
	}

	public List<student> list(int id) {
		// TODO Auto-generated method stub
		return mapper.list(id);
	}
	
}
