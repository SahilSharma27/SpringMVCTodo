package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.enitity.Todo;

@Controller
public class HomeController {
	@Autowired
	ServletContext context;

	@RequestMapping("/home")
	public String Home(Model model) {
		String str = "home";
		List<Todo> list = (List<Todo>)context.getAttribute("LIST");
		
		model.addAttribute("page",str);
		model.addAttribute("todos",list);
		return "home";
	}
	
	@RequestMapping("/add")
	public String add(Model model) {
		//Todo t = new Todo(); 
		model.addAttribute("page","add");
		model.addAttribute("todo",new Todo());
		return "home";
	}
	
	@RequestMapping(value="/saveTodo", method = RequestMethod.POST)
	public String save(@ModelAttribute("todo")Todo t, Model model) {
		t.setTodoData(new Date());
		
		List<Todo> todoList = (List<Todo>) context.getAttribute("LIST");
		todoList.add(t);
		model.addAttribute("msg","Successfully added...");
		
		System.out.println(t.toString());

		return "home";
	}
	
}
