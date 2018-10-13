package com.eagle.Marathavaduvar.utill;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.util.Map;

import com.eagle.Marathavaduvar.utill.AppUtil;
import com.eagle.Marathavaduvar.utill.Constants;

public class EmailTemplate {
	
	private String templateId;

	private String template;

	private Map<String, String> replacementParams;

	public EmailTemplate(String templateId) {
		this.templateId = templateId;
		try {
			this.template = loadHtmlTemplate(templateId);
		} catch (Exception e) {
			this.template = Constants.BLANK;
		}
	}
	
	public EmailTemplate() {
		try {
			this.template = loadHtmlTemplate(templateId);
		} catch (Exception e) {
			this.template = Constants.BLANK;
		}
	}

	private String loadHtmlTemplate(String templateId) throws Exception {
		String content = Constants.BLANK;
		try {
			
			ClassLoader classLoader = getClass().getClassLoader();
			InputStream inputStream = classLoader.getResourceAsStream(templateId);
			content = new String(readFromInputStream(inputStream).getBytes(), "UTF-8");
			
			
			
	//		File file = new File(classLoader.getResource("email-templates/" + templateId).getFile());
			
	//		content = new String(Files.readAllBytes(file.toPath()));
		} catch (IOException e) {
			throw new Exception("Could not read template with ID = " + templateId);
		}
		return content;
	}
	
	private String loadTemplate(String templateId) throws Exception {
		ClassLoader classLoader = getClass().getClassLoader();
		String content = Constants.BLANK;
		try {
			
			
			
			File file = new File(classLoader.getResource("email-templates/" + templateId).getFile());
			
			content = new String(Files.readAllBytes(file.toPath()));
		} catch (IOException e) {
			throw new Exception("Could not read template with ID = " + templateId);
		}
		return content;
	}

	public String getTemplate(Map<String, String> replacements) {
		String cTemplate = this.getTemplate();

		if (!AppUtil.isObjectEmpty(cTemplate)) {
			for (Map.Entry<String, String> entry : replacements.entrySet()) {
				cTemplate = cTemplate.replace("{{" + entry.getKey() + "}}", entry.getValue());
			}
		}
		
		return cTemplate;
	}
	
	public String getHtmlTemplate(Map<String, String> replacements) {
		String cTemplate = this.getTemplate();

		if (!AppUtil.isObjectEmpty(cTemplate)) {
			for (Map.Entry<String, String> entry : replacements.entrySet()) {
				cTemplate = cTemplate.replace( entry.getKey() , entry.getValue());
			}
		}
		
		return cTemplate;
	}

	private String readFromInputStream(InputStream inputStream)
			  throws IOException {
			    StringBuilder resultStringBuilder = new StringBuilder();
			    try (BufferedReader br
			      = new BufferedReader(new InputStreamReader(inputStream))) {
			        String line;
			        while ((line = br.readLine()) != null) {
			            resultStringBuilder.append(line).append("\n");
			        }
			    }
			  return resultStringBuilder.toString();
			}
	

	
	/**
	 * @return the templateId
	 */
	public String getTemplateId() {
		return templateId;
	}

	/**
	 * @param templateId
	 *            the templateId to set
	 */
	public void setTemplateId(String templateId) {
		this.templateId = templateId;
	}

	/**
	 * @return the template
	 */
	public String getTemplate() {
		return template;
	}
	
	public String getHtmlTemplate() {
		return template;
	}

	/**
	 * @param template
	 *            the template to set
	 */
	public void setTemplate(String template) {
		this.template = template;
	}

	/**
	 * @return the replacementParams
	 */
	public Map<String, String> getReplacementParams() {
		return replacementParams;
	}

	/**
	 * @param replacementParams
	 *            the replacementParams to set
	 */
	public void setReplacementParams(Map<String, String> replacementParams) {
		this.replacementParams = replacementParams;
	}


}
