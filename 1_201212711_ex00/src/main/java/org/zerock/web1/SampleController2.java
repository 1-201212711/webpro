package org.zerock.web1;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController2 {
		
	private static final Logger logger = 
			LoggerFactory.getLogger(SampleController2.class);

	// doC => localhost:8080/web1/doC
	
	@RequestMapping("doC")
	public String doC( @ModelAttribute("msg") String msg,Locale locale,Model model){ 
		
		logger.info("doC called..............................");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "result";
		
	}
}


