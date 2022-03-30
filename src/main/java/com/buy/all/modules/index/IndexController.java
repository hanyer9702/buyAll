package com.buy.all.modules.index;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {
	
//	������
	@RequestMapping(value = "/user/include/top")
	public String footer(Model model) throws Exception {
				
		return "/user/include/top";
	}
	
//	���� ������
	@RequestMapping(value = "/index/indexView")
	public String bottom(Model model) throws Exception {
		
		return "/user/index/indexView";
	}
	
}
