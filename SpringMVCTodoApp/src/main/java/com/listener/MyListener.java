package com.listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.enitity.Todo;

public class MyListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		System.out.println("Context created");
		
		List<Todo> todoList =  new ArrayList<Todo>();
		
		ServletContext context =  sce.getServletContext();
		
		context.setAttribute("LIST",todoList);
		
	}

	
}
