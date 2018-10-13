package com.eagle.Marathavaduvar;

import java.util.List;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

	@EnableWebMvc
	@ComponentScan("com.eagle.Marathavaduvar")
	@Configuration
	@EnableTransactionManagement
	@EnableAspectJAutoProxy
	@EnableCaching
	public class WebAppconfig extends WebMvcConfigurerAdapter {

		@Override
		public void addViewControllers(ViewControllerRegistry registry) {

			registry.addViewController("/").setViewName("/home");

		}

		@Override
		public void addCorsMappings(CorsRegistry registry) {
			registry.addMapping("/**")
					.allowedMethods("HEAD", "GET", "PUT", "POST", "DELETE", "PATCH");
		}

		@Override
		public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {

			converters.add(new MappingJackson2HttpMessageConverter());

			super.configureMessageConverters(converters);
		}

		@Override
		public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
			configurer.favorPathExtension(true).favorParameter(true).parameterName("MediaType").ignoreAcceptHeader(false)
					.useJaf(false).defaultContentType(MediaType.TEXT_HTML).mediaType("web", MediaType.TEXT_HTML)
					.mediaType("json", MediaType.APPLICATION_JSON_UTF8).mediaType("xml", MediaType.APPLICATION_XML);

		}

		public ViewResolver viewResolver() {
			InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
			viewResolver.setViewClass(JstlView.class);
			viewResolver.setPrefix("/WEB-INF/jsp/");
			viewResolver.setSuffix(".jsp");
			return viewResolver;
		}
		@Override
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
			registry.addResourceHandler("/**").addResourceLocations("classpath:/static/");
		}

		@Override
		public void configureViewResolvers(ViewResolverRegistry registry) {

			registry.viewResolver(viewResolver());
		}

		@Bean
		public MultipartResolver multipartResolver() {

			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
			return multipartResolver;
		}


	}



