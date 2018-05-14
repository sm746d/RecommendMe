package edu.fullerton.springController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.fullerton.bean.Emp;
import edu.fullerton.bean.RecommenderBean;

@Controller
public class EmpController {
	
	@RequestMapping("/empform")
	public ModelAndView showform()
	{
		System.out.println("inside controller-------shan");
		return new ModelAndView("empform", "command", new Emp());
	}
	
	@RequestMapping(value= "/save", method= RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("emp") Emp emp)
	{
		System.out.println(emp.getName()+" "+emp.getId());
		return new ModelAndView("redirect:/viewemp");
	}
	
	@RequestMapping("/viewemp")
	public ModelAndView viewemp()
	{
		List<Emp> lst = new ArrayList<Emp>();
		lst.add(new Emp(1,"Nishant",10,"Java"));
		lst.add(new Emp(2,"Andy",20,"Python"));
		lst.add(new Emp(3,"Shan",30,"Big Data"));
		return new ModelAndView("viewemp", "list", lst);
	}
	
	@RequestMapping(value = "/indexDemo", method = RequestMethod.GET)
	public String indexDemo()
	{
		return "indexDemo";
	}
	
}
