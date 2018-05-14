package edu.fullerton.springController;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.fullerton.bean.RecoStatusMasterBean;
import edu.fullerton.bean.RecommendStatusBean;
import edu.fullerton.daoImplementation.AskGetRecommendation;

@Controller
public class SendEmailController {

	/*@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private AskGetRecommendation objAskGetRecommendation;

	@RequestMapping(method=RequestMethod.POST)
	public void doSendEmail(HttpServletRequest request)
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
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		System.out.println("utilDate:" + utilDate);
		System.out.println("sqlDate:" + sqlDate);
		objRecoStatus.setRecoDate(sqlDate);
		objRecoStatus.setuId(1);
		objRecoStatus.setRecoStatus("Pending");

		objAskGetRecommendation.insertRecoRequestData(objRecoStatus);


		//return "";	
	}*/
}
