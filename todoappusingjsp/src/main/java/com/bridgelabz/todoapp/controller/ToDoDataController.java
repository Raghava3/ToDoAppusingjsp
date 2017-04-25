package com.bridgelabz.todoapp.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bridgelabz.todoapp.model.ToDoData;
import com.bridgelabz.todoapp.model.User;
import com.bridgelabz.todoapp.service.serviceinterface.DataSerInter;

@Controller
public class ToDoDataController {
	
	@Autowired
	DataSerInter dataSerInter;
	
	
	@RequestMapping("/Homepage")
	public  ModelAndView listOfNotes(HttpServletRequest req,HttpServletResponse resp ) 
	{
		HttpSession session=req.getSession();
	    User user=(User)session.getAttribute("user");
	    if(user!=null){
	    List<ToDoData> dataList=dataSerInter.listOfNotes(user.getId());
	    Iterator<ToDoData> iterator = dataList.iterator();     // iterating
	    return new ModelAndView("dataPage","dataList",dataList);
	    }
	    else
	    	return new ModelAndView("index");
	}
	
	@RequestMapping(value="/addNotes",method=RequestMethod.GET)
	public String addNote(ToDoData  todoData,HttpServletRequest req,HttpServletResponse resp)
	{
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("user");
		todoData.setUser(user);
		dataSerInter.addNote(todoData);
		return  "redirect:/Homepage";
	}
	
	@RequestMapping("/deleteNote")
	public  ModelAndView deleteNote(HttpServletRequest req,HttpServletResponse resp,@RequestParam("id")int id)
	{
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		dataSerInter.noteToDelete(id);
		List<ToDoData> dataList=dataSerInter.listOfNotes(user.getId());
	    return new ModelAndView("dataPage","dataList",dataList);
		}
		else
		{
			return new ModelAndView("index");
		}
		}

	static int todoid=0;

	
	@RequestMapping("/update")
	public  ModelAndView updateNote(HttpServletRequest req,HttpServletResponse resp,@RequestParam("id")int id,ToDoData toDoData)
	{
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("user");
		todoid=id;
	 //   int userid=user.getId();
	/*	toDoData.setId(id);
		dataSerInter.noteUpdate(toDoData);*/
	//	 List<ToDoData> dataList=dataSerInter.listOfindividualnotes(id, userid);
		  //  return new ModelAndView("updatepage","datalist",dataList);
		
		if(user!=null)
		{
		return new ModelAndView("updatepage");
	   }
		else
		{
			return new ModelAndView("index");
		}
		}

	@RequestMapping("addNotes1")
	public  ModelAndView listOfNotes(HttpServletRequest req,HttpServletResponse resp ,ToDoData tododata) 
	{
		tododata.setId(todoid);
		HttpSession session=req.getSession();
	    User user=(User)session.getAttribute("user");
	    tododata.setUser(user);
	    System.out.println("coming inside add notes1");
	    dataSerInter.noteUpdate(tododata);
	    return new ModelAndView("redirect:/Homepage");
	}
}
