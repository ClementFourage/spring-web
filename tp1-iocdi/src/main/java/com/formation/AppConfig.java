package com.formation;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.formation.controller.HelloController;
import com.formation.service.FeedbackToConsole;
import com.formation.service.IFeedback;
import com.formation.user.UserInteraction;

@Configuration
@EnableWebMvc
@ComponentScan(basePackageClasses = HelloController.class)
public class AppConfig implements WebMvcConfigurer {
	
	@Bean
	public IFeedback IFeedback() {
		return new FeedbackToConsole();
	}
	
	@Bean
	public UserInteraction UserInteraction() {
		return new UserInteraction();
	}
}
