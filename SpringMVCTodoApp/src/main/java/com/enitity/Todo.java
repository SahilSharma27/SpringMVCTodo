package com.enitity;

import java.util.Date;

public class Todo {
	
	private String todoTitle;
	private String todoContent;
	private Date todoData;
	
	
	
	public Todo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Todo(String todoTitle, String todoContent, Date todoData) {
		super();
		this.todoTitle = todoTitle;
		this.todoContent = todoContent;
		this.todoData = todoData;
	}

	public String getTodoTitle() {
		return todoTitle;
	}

	public void setTodoTitle(String todoTitle) {
		this.todoTitle = todoTitle;
	}

	public String getTodoContent() {
		return todoContent;
	}

	public void setTodoContent(String todoContent) {
		this.todoContent = todoContent;
	}

	public Date getTodoData() {
		return todoData;
	}

	public void setTodoData(Date todoData) {
		this.todoData = todoData;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.todoTitle + " : " + this.todoContent + " : " +this.getTodoData();
	}
	
	
	
	
	
	
}
