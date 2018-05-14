package edu.fullerton.daoImplementation;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.ObjectToStringHttpMessageConverter;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.fullerton.bean.SignUpBean;
import edu.fullerton.bean.User;

@Repository
public class CreateUserAccount {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public long insertSignUpDetails(SignUpBean objSignUpBean)
	{
		this.sessionFactory.getCurrentSession().save(objSignUpBean);
		return objSignUpBean.getuId();
	}


	/*@Transactional
	public long insertSignUpDetails(User objSignUpBean)
	{
		this.sessionFactory.getCurrentSession().save(objSignUpBean);
		return objSignUpBean.getuId();
	} */

	@SuppressWarnings("unchecked")
	@Transactional
	public long checkUserloginDetials(SignUpBean objSignUpBean)
	{
		StringBuffer sb = new StringBuffer();
		sb.append("select u.password FROM SignUpBean u where u.emailId=:email");
		Criteria objQuery = this.sessionFactory.getCurrentSession().createCriteria(SignUpBean.class, sb.toString());
		objQuery.add(Restrictions.eq("emailId", objSignUpBean.getEmailId()));
		System.out.println(objQuery.toString());
		List<SignUpBean> lst = objQuery.list();
		SignUpBean objsub = lst.get(0);
		if(objsub.getPassword().equals(objSignUpBean.getPassword()))
		{
			System.out.println("inside if--->");
			return objsub.getuId();

		}
		else
		{
			System.out.println("inside else--->");
			return 0;
		}

	}

	
}
