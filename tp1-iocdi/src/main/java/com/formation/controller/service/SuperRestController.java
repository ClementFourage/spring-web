package com.formation.controller.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.formation.service.MessageDto;
import com.formation.service.MessageService;
import com.formation.service.MessageServiceImpl;

@RequestMapping("/admin")
@RestController
public class SuperRestController {
	MessageService serv = new MessageServiceImpl();
	
	@RequestMapping(value = "/messages", produces = {"application/JSON"}, method = RequestMethod.GET)
	public List<MessageDto> findAllMessages() {
		return serv.findAllMessages();
	}
}
