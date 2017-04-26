package com.bridgelabz.todoapp.service.serviceimplementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bridgelabz.todoapp.dao.daointerface.DataDaoInter;
import com.bridgelabz.todoapp.model.ToDoData;
import com.bridgelabz.todoapp.model.User;
import com.bridgelabz.todoapp.service.serviceinterface.DataSerInter;

/**
 * @author bridgelabz3 Raghava
 * this class implements DataSerInter interface provides the implementation
 * addTitle method returns boolean
 * dataList method returns List
 */
public class DataSerImpl implements DataSerInter 
{
	@Autowired
	DataDaoInter dataDaoInter;
	
	public boolean addNote(ToDoData toDoData)
	{
       return dataDaoInter.addNote(toDoData);
	}

	@Override
	public List<ToDoData> listOfNotes(int id)
	{
	   return dataDaoInter.listOfNotes(id);
	}


	@Override
	public boolean noteUpdate(ToDoData toDoData) 
	{
	   return dataDaoInter.noteUpdate(toDoData);
	}

	@Override
	public boolean noteToDelete(int id)
	{
		return dataDaoInter.noteToDelete(id);
	}

	@Override
	public List<ToDoData> listOfindividualnotes(int todoid, int userid) {
		
		return dataDaoInter.listOfindividualnotes(todoid, userid);
	}
}
