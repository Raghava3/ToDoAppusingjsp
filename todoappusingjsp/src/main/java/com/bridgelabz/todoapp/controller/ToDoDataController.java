package com.bridgelabz.todoapp.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.node.ObjectNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bridgelabz.todoapp.model.ToDoData;
import com.bridgelabz.todoapp.model.User;
import com.bridgelabz.todoapp.service.serviceinterface.DataSerInter;

@RestController
public class ToDoDataController {
	
	@Autowired
	DataSerInter dataSerInter;
	
	@RequestMapping("/Homepage")
	public  ModelAndView listOfNotes(HttpServletRequest req,HttpServletResponse resp ) 
	{		HttpSession session=req.getSession();
	    User user=(User)session.getAttribute("user");
	    if(user!=null){
	    List<ToDoData> dataList=dataSerInter.listOfNotes(user.getId());
	    Collections.reverse(dataList);
	    Iterator<ToDoData> iterator = dataList.iterator();     // iterating
	    return new ModelAndView("dataPage","dataList",dataList);
	    }
	    else
	    	return new ModelAndView("index");
	}
	
	@RequestMapping(value="/addNote",method=RequestMethod.GET)
	public ResponseEntity<String> addNote(ToDoData  todoData,HttpServletRequest req,HttpServletResponse resp) throws JsonGenerationException, JsonMappingException, IOException
	{
		System.out.println("inside add note");
		HttpSession session=req.getSession();
		User user = (User)session.getAttribute("user");
		todoData.setUser(user);
	    if(user!=null){
		dataSerInter.addNote(todoData);
		ObjectMapper mapper=new ObjectMapper();
		ObjectNode root=mapper.createObjectNode();
		root.put("status", "sucess");
		todoData.setUser(null);
		root.putPOJO("tododata", todoData);
		String lstr=mapper.writeValueAsString(root);
		return new ResponseEntity<String>( lstr,HttpStatus.OK);
	    }
	    else
	    {
	    	return new ResponseEntity<String>("{status:'failure'}",HttpStatus.BAD_REQUEST);
	    }
	}
	
	
	@RequestMapping("/deleteNote")
	public  ModelAndView deleteNote(HttpServletRequest req,HttpServletResponse resp,@RequestParam("id")int id)
	{
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		dataSerInter.noteToDelete(id);
		return new ModelAndView("redirect:/Homepage");
		}
		else
		{
			return new ModelAndView("loginPage");
		}
		}

	
	static int todoid=0;

	
	@RequestMapping("/update")
	public  ModelAndView updateNote(HttpServletRequest req,HttpServletResponse resp,@RequestParam("id")int id,ToDoData toDoData)
	{
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		 todoid=id;
	     int userid=user.getId();
		 toDoData.setId(id);
		 dataSerInter.noteUpdate(toDoData);
	     return new ModelAndView("redirect:/Homepage");
		}
	else
	{
		return new ModelAndView("loginPage");
	}
	}
/*	@RequestMapping("addNotes1")
	public  ModelAndView listOfNotes(HttpServletRequest req,HttpServletResponse resp ,ToDoData tododata) 
	{
		tododata.setId(todoid);
		HttpSession session=req.getSession();
	    User user=(User)session.getAttribute("user");
	    tododata.setUser(user);
	   
	    dataSerInter.noteUpdate(tododata);
	    return new ModelAndView("redirect:/Homepage");
	}*/
}
