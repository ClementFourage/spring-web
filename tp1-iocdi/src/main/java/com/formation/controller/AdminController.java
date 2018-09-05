package com.formation.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.formation.model.Message;

@Controller
@RequestMapping("/admin")
public class AdminController {

//	@GetMapping("/messages")
//	public String direct2() {
//		return "list";
//	}
	
	@GetMapping("/messages")
	public ModelAndView directWithMessage() {
		ModelAndView modelAndView = new ModelAndView();
		List<Message> messages = new ArrayList<>();
		
		Message message1 = new Message();
		message1.setExpediteur("Fry");
		message1.setDestinataire("Bender");
		message1.setMessage("Shut up and take my money");
		message1.setHeure(LocalDateTime.now());
		
		Message message2 = new Message();
		message2.setExpediteur("Fry");
		message2.setDestinataire("Bender");
		message2.setMessage("Shut up and eat my money");
		message2.setHeure(LocalDateTime.now());
		
		messages.add(message1);
		messages.add(message2);
		
		modelAndView.addObject("msg", messages);
		modelAndView.setViewName("list");
		
		return modelAndView;
		
	}

}
