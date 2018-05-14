package edu.fullerton.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import edu.fullerton.bean.SignUpBean;
import edu.fullerton.daoImplementation.CreateUserAccount;
import edu.fullerton.model.logic.GenerateUrl;


/**
 * Servlet implementation class GenerateUrlServlet
 */
public class GenerateUrlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public GenerateUrlServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int caseId = Integer.valueOf(request.getParameter("caseId"));
		if(caseId==2)
		{
			long userId = (Long)request.getSession().getAttribute("uId");
			GenerateUrl objGenerateUrl = new GenerateUrl();
			String urlJson = objGenerateUrl.generateUrl(userId).toString();
			System.out.println("url==>"+urlJson);
			response.setContentType("application/text");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(urlJson);
		}
		if(caseId==1)
		{
			long userId = (Long)request.getSession().getAttribute("uId");
			System.out.println("userId==>"+userId);
			GenerateUrl objGenerateUrl = new GenerateUrl();
			String urlJson = objGenerateUrl.shareRecoUrl(userId).toString();
			System.out.println("url==>"+urlJson);
			response.setContentType("application/text");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(urlJson);
		}
	}

}
