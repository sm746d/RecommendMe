package edu.fullerton.model.logic;

import org.json.JSONObject;

public class GenerateUrl 
{
	public JSONObject generateUrl(long userId)
	{
		StringBuilder url = new StringBuilder();
		JSONObject outputJson = new JSONObject();
		long tk = System.currentTimeMillis();
		System.out.println("tk==>"+tk);
		url.append("http://localhost:8080/recommendMe/do/reco/recommender?");
		url.append("tk="+tk);
		url.append("&uid="+userId);
		outputJson.put("url", url.toString());
		outputJson.put("token", tk);
		return outputJson;
	}
	
	public JSONObject shareRecoUrl(long userId)
	{
		StringBuilder url = new StringBuilder();
		JSONObject outputJson = new JSONObject();
		long tk = System.currentTimeMillis();
		System.out.println("tk==>"+tk);
		url.append("http://localhost:8080/recommendMe/do/reco/share?");
		url.append("tk="+tk);
		url.append("&uid="+userId);
		outputJson.put("url", url.toString());
		outputJson.put("token", tk);
		return outputJson;
	}
}
