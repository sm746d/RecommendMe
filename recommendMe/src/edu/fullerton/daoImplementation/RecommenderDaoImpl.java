package edu.fullerton.daoImplementation;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.fullerton.bean.RecommenderBean;
import edu.fullerton.dao.RecommenderDao;

@Repository
public class RecommenderDaoImpl implements RecommenderDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	@Override
	public void insertRecommendation(RecommenderBean objRecommenderbean) {
		this.sessionFactory.getCurrentSession().save(objRecommenderbean);
	}

	@SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<RecommenderBean> getAllRecommendation(long uId) {
        // TODO Auto-generated method stub
        Query query = this.sessionFactory.getCurrentSession().createQuery("from RecommenderBean where uId = :uId");
        query.setParameter("uId", uId);
        List<RecommenderBean> list = query.list();
        return list;
    }

}
