package edu.fullerton.springController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import edu.fullerton.bean.Emp;
import edu.fullerton.bean.RecommendStatusBean;
import edu.fullerton.bean.RecommenderBean;
import edu.fullerton.bean.ShareRecommendationBean;
import edu.fullerton.bean.SignUpBean;
import edu.fullerton.bean.User;
import edu.fullerton.bean.UserInformationBean;
import edu.fullerton.dao.RecommenderDao;
import edu.fullerton.daoImplementation.AskGetRecommendation;
import edu.fullerton.daoImplementation.CreateUserAccount;

@RestController
@RequestMapping("/reco")
public class RecommendUrlController {

	@Autowired
	private CreateUserAccount objCreateUserAccount;
	@Autowired
	private RecommenderDao objRecommenderDao;
	@Autowired
	private AskGetRecommendation objAskGetRecommendation;
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/recommender")
	public ModelAndView openRecommendPage(@RequestParam(value="tk") long tk, @RequestParam(value="uid") long uId)
	{
		System.out.println("inside get ==>"+tk+" -- "+uId);

		StringBuilder recoUrl = new StringBuilder();
		//recoUrl.append("../../view/jsp/recommend.jsp?");
		recoUrl.append("/do/reco/recoPage?");
		recoUrl.append("tk="+tk);
		recoUrl.append("&uid="+uId);
		System.out.println(recoUrl);
		return new ModelAndView("redirect:" +recoUrl.toString());
		//return new ModelAndView(recoUrl.toString());
	}

	@RequestMapping("/share")
	public ModelAndView openShareRecoPage(@RequestParam(value="tk") long tk, @RequestParam(value="uid") long uId)
	{
		System.out.println("inside get ==>"+tk+" -- "+uId);

		StringBuilder recoUrl = new StringBuilder();
		//recoUrl.append("../../view/jsp/recommend.jsp?");
		recoUrl.append("/do/reco/shareRecoPage?");
		recoUrl.append("tk="+tk);
		recoUrl.append("&uid="+uId);
		System.out.println(recoUrl);
		return new ModelAndView("redirect:" +recoUrl.toString());
		//return new ModelAndView(recoUrl.toString());
	}

	@RequestMapping("/recoPage")
	public ModelAndView viewRecommenderPage(@RequestParam(value="tk") long tk, @RequestParam(value="uid") long uId)
	{
		System.out.println("inside recopage ==>"+tk+" -- "+uId);
		RecommenderBean objRecBean = new RecommenderBean();
		objRecBean.setuId(uId);
		objRecBean.setToken(tk);
		return new ModelAndView("recommend", "command", objRecBean);
	}

	@RequestMapping("/shareRecoPage")
	public ModelAndView shareRecoPage(@RequestParam(value="tk") long tk, @RequestParam(value="uid") long uId)
	{
		System.out.println("inside recopage ==>"+tk+" -- "+uId);
		List<RecommenderBean> lst = objRecommenderDao.getAllRecommendation(uId);
		System.out.println(lst.size());
		return new ModelAndView("sharedRecommendation","lst",lst);
	}

	@RequestMapping("/landingPage")
	public ModelAndView landingPage()
	{
		return new ModelAndView("home","command",new SignUpBean());
	}

	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public @ResponseBody String login(@RequestParam(value="emailId") String emailId, @RequestParam(value="pwd") String pwd, HttpServletRequest request)
	{
		System.out.println("inside login function ==>"+emailId+" -- "+pwd);
		/*User objSignUpBean = new User();
		objSignUpBean.setEmailId(emailId);
		objSignUpBean.setPassword(pwd);
		long matchStatus = objCreateUserAccount.checkUserloginDetials(objSignUpBean);
		*/
		SignUpBean objSignUpBean = new SignUpBean();
		objSignUpBean.setEmailId(emailId);
		objSignUpBean.setPassword(pwd);
		long matchStatus = objCreateUserAccount.checkUserloginDetials(objSignUpBean);
		
		request.getSession().setAttribute("uId",matchStatus);
		return String.valueOf(matchStatus);
	}

	@RequestMapping("/searchPage")
	public ModelAndView searchPage()
	{
		System.out.println("inside search page");
		return new ModelAndView("checkRecoStatus","command",new RecommendStatusBean());
	}

	/************************************************************************************/
	@RequestMapping(value = "/recommendSave")
	public ModelAndView insertRecommendation(@ModelAttribute("objRecoBean") RecommenderBean objRecoBean){
		System.out.println("uid from url-->"+objRecoBean.getuId());
		System.out.println("firstName =="+objRecoBean.getFirstName());
		objRecoBean.setuId(objRecoBean.getuId());
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		objRecoBean.setRecommendDate(sqlDate);
		objRecommenderDao.insertRecommendation(objRecoBean);
		int result = objAskGetRecommendation.updateRecoStatus(objRecoBean.getToken());
		System.out.println("result ==>"+result);
		return new ModelAndView("thankyou");
	}

	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView insertUserInfo(@ModelAttribute("objSignUpBean") SignUpBean objSignUpBean, HttpServletRequest request) {
		System.out.println("firstName =="+objSignUpBean.getFirstName());
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		objSignUpBean.setJoiningDate(sqlDate);
		long userId = objCreateUserAccount.insertSignUpDetails(objSignUpBean);
		request.getSession().setAttribute("uId",userId);
		return new ModelAndView("personalInfo");
	}

	@RequestMapping(value = "/loginRedirect", method = RequestMethod.GET)
	public String loginRedirect()
	{
		return "generateUrl";
	}
	
	@RequestMapping(value = "/resumedownload", method = RequestMethod.GET)
	public String generateResume()
	{
		return "generateresume";
	}
	
	@RequestMapping(value = "/shareRecommendation", method = RequestMethod.GET)
	public String shareRecommendation()
	{
		return "shareReco";
	}

	@RequestMapping(value = "/loginRedirect", method = RequestMethod.POST)
	public ModelAndView afterLogin(HttpServletRequest request)
	{
		System.out.println("inside method---------------------------->>>");
		System.out.println(request.getSession().getAttribute("uId"));
		return new ModelAndView("generateUrl","command",new RecommendStatusBean());
	}

	@RequestMapping(value="/searchStatus", method=RequestMethod.POST)
	public ModelAndView getAllRecoStatus(@ModelAttribute("objRecoStatusBean") RecommendStatusBean objRecoStatusBean, HttpServletRequest request)
	{
		objRecoStatusBean.setuId((Long)request.getSession().getAttribute("uId"));
		objRecoStatusBean.setStatusList(objAskGetRecommendation.getAllRecoStatus(objRecoStatusBean));
		return new ModelAndView("checkRecoStatus","command", objRecoStatusBean);
	}

	@RequestMapping(value="/sendEmail",method=RequestMethod.POST)
	public ModelAndView doSendEmail(HttpServletRequest request)
	{
		String recipientAddress = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");

		System.out.println("To->"+recipientAddress);
		System.out.println("subject ->"+subject);
		System.out.println("message for email to send->"+message);
		System.out.println("tk-> "+request.getParameter("token"));

		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(recipientAddress);
		mail.setSubject(subject);
		mail.setText(message);

		mailSender.send(mail);

		RecommendStatusBean objRecoStatus = new RecommendStatusBean();
		objRecoStatus.setfName(request.getParameter("fName"));
		objRecoStatus.setlName(request.getParameter("lName"));
		objRecoStatus.setToken(Long.parseLong(request.getParameter("token")));
		objRecoStatus.setEmail(recipientAddress);
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		System.out.println("utilDate:" + utilDate);
		System.out.println("sqlDate:" + sqlDate);
		objRecoStatus.setRecoDate(sqlDate);
		objRecoStatus.setuId((Long)request.getSession().getAttribute("uId"));
		objRecoStatus.setRecoStatus("Pending");

		objAskGetRecommendation.insertRecoRequestData(objRecoStatus);

		return new ModelAndView("generateUrl","command",new RecommendStatusBean());		//return "";	
	}
	
	@RequestMapping(value="/sendShareRecommendationEmail",method=RequestMethod.POST)
	public ModelAndView sendShareRecommendationEmail(HttpServletRequest request)
	{
		String recipientAddress = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");

		System.out.println("To->"+recipientAddress);
		System.out.println("subject ->"+subject);
		System.out.println("message for email to send->"+message);
		System.out.println("tk-> "+request.getParameter("token"));

		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(recipientAddress);
		mail.setSubject(subject);
		mail.setText(message);

		mailSender.send(mail);

		ShareRecommendationBean objShareReco = new ShareRecommendationBean();
		objShareReco.setfName(request.getParameter("fName"));
		objShareReco.setlName(request.getParameter("lName"));
		objShareReco.setToken(Long.parseLong(request.getParameter("token")));
		objShareReco.setEmail(recipientAddress);
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		System.out.println("utilDate:" + utilDate);
		System.out.println("sqlDate:" + sqlDate);
		objShareReco.setShareDate(sqlDate);
		objShareReco.setuId((Long)request.getSession().getAttribute("uId"));
		objShareReco.setShareStatus("Shared");

		objAskGetRecommendation.insertShareRecoData(objShareReco);
		return new ModelAndView("shareReco","command",new ShareRecommendationBean());		//return "";	
	}


	@RequestMapping(value="/viewreco")
	public ModelAndView viewreco(HttpServletRequest request)
	{
		//List<RecommenderBean> lst = new ArrayList<RecommenderBean>();
		System.out.println("--->"+request.getSession().getAttribute("uId"));
		long uidValue = (Long)request.getSession().getAttribute("uId");
		System.out.println("uidValue==>"+uidValue);
		List<RecommenderBean> lst = objRecommenderDao.getAllRecommendation(uidValue);
		//List<RecommenderBean> lst = objRecommenderDao.getAllRecommendation(Long.valueOf("1"));
		System.out.println(lst.size());
		//System.out.println(lst.get(0).getRecoContent());
		return new ModelAndView("viewreco","lst",lst);
	}
	
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String closeSession(HttpServletRequest request){
	    HttpSession session=request.getSession();  
	    session.invalidate();  
	    return "redirect:../reco/landingPage";
	}

	@RequestMapping(value="/personalInfo",method=RequestMethod.GET)
	public String personalInfo(HttpServletRequest request){  
	    return "personalInfo";
	}
	/******************************************************************************************/	


	/*@GET
	@Path("/recommender")
	public Response openRecommendPage(@QueryParam("tk") long tk,@QueryParam("uid") long uId)
	{
		System.out.println("inside get ==>"+tk+" -- "+uId);
		java.net.URI location = null;
		try {
			StringBuilder recoUrl = new StringBuilder();
			recoUrl.append("/view/jsp/recommend.jsp?");
			recoUrl.append("tk="+tk);
			recoUrl.append("&uid="+uId);
			System.out.println(recoUrl);
			location = new java.net.URI(recoUrl.toString());
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return Response.temporaryRedirect(location).build();
	}*/
}
