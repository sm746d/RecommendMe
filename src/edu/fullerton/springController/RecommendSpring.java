package edu.fullerton.springController;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.fullerton.bean.RecommendStatusBean;
import edu.fullerton.bean.RecommenderBean;
import edu.fullerton.bean.SignUpBean;
import edu.fullerton.bean.UserInformationBean;
import edu.fullerton.dao.RecommenderDao;
import edu.fullerton.daoImplementation.AskGetRecommendation;
import edu.fullerton.daoImplementation.CreateUserAccount;

@Controller
public class RecommendSpring {
	/*@Autowired
	private RecommenderDao objRecommenderDao;
	@Autowired
	private AskGetRecommendation objAskGetRecommendation;
	@Autowired
	private CreateUserAccount objCreateUserAccount;
 
	@RequestMapping(value = "/recommendSave", method = RequestMethod.POST)
	public ModelAndView insertRecommendation(@ModelAttribute("objRecoBean") RecommenderBean objRecoBean ) {
		System.out.println("firstName =="+objRecoBean.getFirstName());
		objRecommenderDao.insertRecommendation(objRecoBean);
		return new ModelAndView("recommend", "command", new RecommenderBean());
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView insertUserInfo(@ModelAttribute("objSignUpBean") SignUpBean objSignUpBean) {
		System.out.println("firstName =="+objSignUpBean.getFirstName());
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		objSignUpBean.setJoiningDate(sqlDate);
		long userId = objCreateUserAccount.insertSignUpDetails(objSignUpBean);
		return new ModelAndView("userInformationForm","command", new UserInformationBean());
	}
	
	@RequestMapping(value = "/loginRedirect", method = RequestMethod.POST)
	public ModelAndView afterLogin(HttpServletRequest request)
	{
		System.out.println("inside method---------------------------->>>");
		System.out.println(request.getSession().getAttribute("uId"));
		return new ModelAndView("generateUrl","command",new RecommendStatusBean());
	}
	
	@RequestMapping(value="/searchStatus", method=RequestMethod.POST)
	public ModelAndView getAllRecoStatus(@ModelAttribute("objRecoStatusBean") RecommendStatusBean objRecoStatusBean)
	{
		
		objRecoStatusBean.setStatusList(objAskGetRecommendation.getAllRecoStatus(objRecoStatusBean));
		return new ModelAndView("checkRecoStatus","command", objRecoStatusBean);
	}*/
	
}
