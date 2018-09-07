package com.formation.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.formation.dao.MessageDao;
import com.formation.model.Message;

@Service
@Transactional
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageDao dao;
	
	@Autowired
	private MessageRepository repo;

	@Override
	public void send(MessageDto message) {
		Message newMessage = new Message();
		newMessage.setDestinataire(message.getFromUser());
		newMessage.setExpediteur(message.getToUser());
		newMessage.setMessage(message.getContent());
		dao.save(newMessage);
	}

	@Override
	public void edit(MessageDto editedMsg) {
		
	}

	@Override
	public void delete(String fromUser, String toUser) {
		
	}

	@Override
	public List<MessageDto> findAllMessages() {
		List<MessageDto> content = new ArrayList<MessageDto>();
		MessageDto message1 = new MessageDto();
		message1.setFromUser("Bender");
		message1.setToUser("Fry");
		message1.setEventTime(LocalDateTime.now());
		message1.setContent("Bender Bender Bender Bender !!!");
 		
		MessageDto message2 = new MessageDto();
		message2.setFromUser("Fry");
		message2.setToUser("Bender");
		message2.setEventTime(LocalDateTime.now());
		message2.setContent("Take my money !");
 		content.add(message1);
		content.add(message2);
		return content;
	}

	@Override
	public List<MessageDto> findMessageSendToAUserADay(String toUser, LocalDate day) {
		List<Message> messages = repo.findMessageByFromUserAndEventTimeBetween(toUser, day, LocalDate.now());
		List<MessageDto> messagesDto = new ArrayList<MessageDto>();
		for (Message message : messages) {
			messagesDto.add(fromMessageToMessageDto(message));
			System.out.println(fromMessageToMessageDto(message));
		}
		return messagesDto;
	}

	@Override
	public List<MessageDto> findAllMessageFromUser(String fromUser) {
		List<Message> messages = repo.findMessageByFromUser(fromUser);
		List<MessageDto> messagesDto = new ArrayList<MessageDto>();
		for (Message message : messages) {
			messagesDto.add(fromMessageToMessageDto(message));
			System.out.println(fromMessageToMessageDto(message));
		}
		return messagesDto;
	}

	public MessageDto fromMessageToMessageDto(Message message) {
		MessageDto newMessageDto = new MessageDto();
		newMessageDto.setFromUser(message.getExpediteur());
		newMessageDto.setToUser(message.getDestinataire());
		newMessageDto.setContent(message.getMessage());
		newMessageDto.setEventTime(message.getHeure());
		return newMessageDto;
	}
}
