package edu.fullerton.dao;

import java.util.List;

import edu.fullerton.bean.RecommenderBean;

public interface RecommenderDao {
	
	public void insertRecommendation(RecommenderBean objRecommenderbean);
	public List<RecommenderBean> getAllRecommendation(long uId);
}
