package edu.fullerton.daoImplementation;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import edu.fullerton.bean.RecommendStatusBean;
import edu.fullerton.bean.ShareRecommendationBean;


@Repository
public class AskGetRecommendation {
	@Autowired
	private SessionFactory sessionFactory;
	/*insert  data*/
	@Transactional
	public void insertRecoRequestData(RecommendStatusBean objRecoStatusBean) {
		try{
			System.out.println(objRecoStatusBean.getToken());
			System.out.println(objRecoStatusBean.getRecoDate());
			this.sessionFactory.getCurrentSession().save(objRecoStatusBean);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<RecommendStatusBean> getAllRecoStatus(RecommendStatusBean objRecoBeanStatus) {
		// TODO Auto-generated method stub
		StringBuffer sbQuery =  new StringBuffer();
		System.out.println(objRecoBeanStatus.getfName());
		sbQuery.append("from RecommendStatusBean u where u.uId = :uId");
		if(objRecoBeanStatus.getfName()!=null && !objRecoBeanStatus.getfName().trim().isEmpty())
			sbQuery.append(" and u.fName= :fName");
		if(objRecoBeanStatus.getlName()!=null && !objRecoBeanStatus.getlName().trim().isEmpty())
			sbQuery.append(" and u.lName= :lName");
		if(objRecoBeanStatus.getRecoStatus()!=null && !objRecoBeanStatus.getRecoStatus().trim().isEmpty())
			sbQuery.append(" and u.recoStatus= :recoStatus");
		if(objRecoBeanStatus.getEmail()!=null && !objRecoBeanStatus.getEmail().trim().isEmpty())
			sbQuery.append(" and u.email= :email");
		Query query = this.sessionFactory.getCurrentSession().createQuery(sbQuery.toString());
		System.out.println(query.toString());
		query.setParameter("uId", objRecoBeanStatus.getuId());
		if(objRecoBeanStatus.getfName()!=null && !objRecoBeanStatus.getfName().trim().isEmpty())
			query.setParameter("fName", objRecoBeanStatus.getfName());
		if(objRecoBeanStatus.getlName()!=null && !objRecoBeanStatus.getlName().trim().isEmpty())
			query.setParameter("lName", objRecoBeanStatus.getlName());
		if(objRecoBeanStatus.getRecoStatus()!=null && !objRecoBeanStatus.getRecoStatus().trim().isEmpty())
			query.setParameter("recoStatus", objRecoBeanStatus.getRecoStatus());
		if(objRecoBeanStatus.getEmail()!=null && !objRecoBeanStatus.getEmail().trim().isEmpty())
			query.setParameter("email", objRecoBeanStatus.getEmail());
		System.out.println(query.toString());
		List<RecommendStatusBean> list =  query.list();
		for(int i=0;i<list.size();i++)
		{
			RecommendStatusBean obj = list.get(i);
			System.out.println(obj.getfName()+"----"+obj.getlName()+"----"+obj.getRecoStatus());
		}	
		return list;	
		//return this.sessionFactory1.getCurrentSession().createQuery("From RecommendStatusBean").list();
	}

	@Transactional
	public int updateRecoStatus(long tk) {
		String hql = "UPDATE RecommendStatusBean u set u.recoStatus = :recoStatus WHERE u.token = :tk";
		Query query =this.sessionFactory.getCurrentSession().createQuery(hql.toString());
		query.setParameter("recoStatus", "Submitted");
		query.setParameter("tk", tk);
		int result = query.executeUpdate();
		return result;
	}
	
	@Transactional
	public void insertShareRecoData(ShareRecommendationBean objShareBean) {
		try{
			System.out.println(objShareBean.getToken());
			System.out.println(objShareBean.getShareDate());
			this.sessionFactory.getCurrentSession().save(objShareBean);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
