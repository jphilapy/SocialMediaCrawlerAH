package com.crawler.main;


/**
 * 
 * @author Jeff Philapy
 *
 */
public class ConnectToApi {

	private static String appToken;
	private static String appSecret;
	private String consumerKey;
	private String consumerSecret;

	public ConnectToApi() {

	}
	
	public void configFile() {

	}

	// setters
	public static void setAppToken(String appToken) {
		ConnectToApi.appToken = appToken;
	}

	public static void setAppSecret(String appSecret) {
		ConnectToApi.appSecret = appSecret;
	}

	public void setConsumerKey(String consumerKey) {
		this.consumerKey = consumerKey;
	}

	public void setConsumerSecret(String consumerSecret) {
		this.consumerSecret = consumerSecret;
	}

	// getters
	public String getAppToken() {
		return ConnectToApi.appToken;
	}

	public String getAppSecret() {
		return ConnectToApi.appSecret;
	}

	public String getConsumerKey() {
		return this.consumerKey;
	}

	public String getConsumerSecret() {
		return this.consumerSecret;
	}

	public String toString() {
		return "ConnectToApi values: Consumer Key = " + this.consumerKey;
	}

}
