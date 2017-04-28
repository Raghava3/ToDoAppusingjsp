package com.bridgelabz.todoapp.service.serviceinterface;

import java.util.List;

import com.bridgelabz.todoapp.model.ToDoData;
import com.bridgelabz.todoapp.model.User;

/**
 * @author bridgelabz3 Raghava this is DataSerInter interface
 */
public interface DataSerInter {

	/**
	 * @param toDoData
	 * @return true/false
	 */
	public boolean addNote(ToDoData toDoData);

	
	public List<ToDoData> listOfNotes(int id);

	/**
	 * @param toDoData
	 * @return boolean
	 */
	public boolean noteUpdate(ToDoData toDoData);

	/**
	 * @param id
	 * @return boolean
	 */
	public boolean noteToDelete(int id);

	public List<ToDoData> listOfindividualnotes(int todoid,int userid);
	public ToDoData individualNotesToPop(int userid,int todoid);

}
