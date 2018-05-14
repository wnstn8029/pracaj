package kosta.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;

import dto.EmpDto;
import service.EmpService;

@Controller
public class AjaxController {

	//org.springframework.web.servlet.view.json.MappingJackson2JsonView
	@Autowired
	private View jsonview;
	@Autowired
	private EmpService empservice;
	
	@RequestMapping(value="json.ajax")
	public View jsonkosta(Model model){
	
		System.out.println("list controller : ");
		
		List<EmpDto> list = empservice.getEmpList();
		model.addAttribute("emp", list);
		
		return jsonview;  //private View jsonview 타입으로 리턴
	}
			
}
