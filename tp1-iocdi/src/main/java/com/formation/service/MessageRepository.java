package com.formation.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.formation.model.Message;

public interface MessageRepository extends JpaRepository<Message, Integer> {
	
	List<Message> findMessageByFromUser(String fromUser);
	
	List<Message> findMessageByToUser(String toUser);
	
	List<Message> findByMessage();
	
	List<Message> findMessageByFromUserAndEventTimeBetween(String toUser, LocalDate date1, LocalDate date2);

}