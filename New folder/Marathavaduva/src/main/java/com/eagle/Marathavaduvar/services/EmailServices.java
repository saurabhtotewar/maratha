package com.eagle.Marathavaduvar.services;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import com.eagle.Marathavaduvar.bussinessObject.Email;

@Component
public class EmailServices {

	@Autowired
	private JavaMailSender mailSender;

	public void send(Email eParams) throws MessagingException {
		try {
			sendHtmlMail(eParams);
		} catch (UnsupportedEncodingException e) {
			System.out.println("hee haa haa");
			e.printStackTrace();
		}

		/*
		 * if (eParams.isHtml()) { try { sendHtmlMail(eParams); } catch
		 * (MessagingException e) {
		 * logger.error("Could not send email to : {} Error = {}",
		 * eParams.getToAsList(), e.getMessage()); } } else {
		 * sendPlainTextMail(eParams); }
		 */

	}

	private void sendHtmlMail(Email eParams) throws MessagingException, UnsupportedEncodingException {

		boolean isHtml = true;

		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setTo(eParams.getTo().toArray(new String[eParams.getTo().size()]));
		helper.setReplyTo(String.valueOf(eParams.getFrom()));
		helper.setFrom(String.valueOf(eParams.getFrom()));
		helper.setSubject(eParams.getSubject());
		helper.setFrom("career@naukrijob.co.in", eParams.getSenderName());
		helper.setText(eParams.getMessage(), isHtml);

		mailSender.send(message);
	}
}
