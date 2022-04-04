package com.buy.all.modules.item;

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
public class ItemController {
	
//	�� ������
	@RequestMapping(value = "/item/itemView")
	public String itemView(Model model) throws Exception {
		
		return "/user/item/itemDetail";
	}
	
//	���ſ� ��ǰ �� ������
	@RequestMapping(value = "/item/itemViewSale")
	public String itemViewSale(Model model) throws Exception {
		
		return "/user/item/itemDetailSale";
	}
	
//	����� ȸ�� ��ǰ ���
	@RequestMapping(value = "/item/itemForm")
	public String itemForm(Model model) throws Exception {
		
		
		return "/user/item/itemFormUser";
	}
	
}
