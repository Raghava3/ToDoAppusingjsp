package com.bridgelabz.todoapp.dao.daointerface;

import java.util.List;

import com.bridgelabz.todoapp.model.ToDoData;

/**
 * @author bridgelabz3 Raghava this is DataDaoInter interface
 *
 */
public interface DataDaoInter {
	/**
	 * add the note to data base
	 * @param toDoData
	 * @return boolean
	 */
	public boolean addNote(ToDoData toDoData);
	
	public List<ToDoData> listOfNotes(int id);
	
	/**
	 * note is going to be updated 
	 * @param toDoData
	 * @return boolean
	 */
	public boolean noteUpdate(ToDoData toDoData);

	/**
	 * note is going to be deleted based based on id
	 * @param id
	 * @return boolean
	 */
	public boolean noteToDelete(int id);
//	public List<ToDoData> listOfindividualnotes(int todoid,int userid);
}
