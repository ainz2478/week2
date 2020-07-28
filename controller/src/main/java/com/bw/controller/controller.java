package com.bw.controller;

import java.util.List;
import com.bw.bean.classes;
import javax.annotation.Resource;
import com.bw.bean.student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bw.service.service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class controller {
@Resource
private service service;
@RequestMapping("clist")
public String classes(Model model){
	List<classes> list=service.sel();
	model.addAttribute("list", list);
	return "clist";
}
@RequestMapping("slist")
public String student(Model model,
		@RequestParam(defaultValue="1")Integer pageNum,
		Integer id
		){
	PageHelper.startPage(pageNum,4 );
	List<student> list=service.list(id);
	PageInfo<student> page=new PageInfo<student>(list);
	model.addAttribute("page",page);
	return "slist";
}
}
