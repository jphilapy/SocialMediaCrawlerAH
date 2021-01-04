package instagramCrawler;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;

import com.google.gson.Gson;

import instagramCrawler.AccessToken;

public class InstagramConnect {
	public static final String ACCESS_TOKEN_CHANGED = "ACCESS_TOKEN_CHANGED";

	// Step One: Direct your user to our authorization URL
	// GET -
	// https://api.instagram.com/oauth/authorize/?client_id=a32e2312ea474c989f6dd94ade0d7695&redirect_uri=http://localhost&response_type=code&scope=public_content

	// POST - https://api.instagram.com/oauth/access_token?
	// client_id=a32e2312ea474c989f6dd94ade0d7695
	// client_secret=1658c4c7bab8423dad311d33fdb73a17
	// grant_type=authorization_code
	// redirect_uri=localhost
	// code=2832709c8dc74dbbb38f831f79ddb0fb

	// https://api.instagram.com/v1/tags/search?q=snowy&access_token=4417774710.a32e231.ae3c86cceeee4f72b026de289741a3a2
	public String get(String baseUrl, Map<String, String> parameters, String token) {

		HttpClient client = new HttpClient();

		StringBuilder sb = new StringBuilder(baseUrl).append("?");

		for (Entry<String, String> M : parameters.entrySet()) {
			String name = M.getKey();
			String value = M.getValue();
			sb.append(name).append("=").append(value).append("&");
		}
		sb.append("access_token").append("=").append(token);
		// Create a method instance.
		GetMethod method = new GetMethod(sb.toString());
		// Provide custom retry handler is necessary
		// method.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new
		// DefaultHttpMethodRetryHandler(3, false));

		try {
			// Execute the method.
			int statusCode = client.executeMethod(method);
			byte[] responseBody = method.getResponseBody();
			String responseTxt = new String(responseBody);
			if (statusCode != HttpStatus.SC_OK) {
				System.err.println("Method failed: " + method.getStatusLine());
				if (responseTxt.contains("OAuthAccessTokenException")) {
					return ACCESS_TOKEN_CHANGED;
				}
			} else {
				return new String(responseBody);
			}

		} catch (HttpException e) {
			System.err.println("Fatal protocol violation: " + e.getMessage());
			e.printStackTrace();
		} catch (IOException e) {
			System.err.println("Fatal transport error: " + e.getMessage());
			e.printStackTrace();
		} finally {
			// Release the connection.
			method.releaseConnection();
		}
		return null;
	}

	public String post(String baseUrl, Map<String, String> formParams) {
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod(baseUrl);
		for (Entry<String, String> M : formParams.entrySet()) {
			String name = M.getKey();
			String value = M.getValue();
			post.addParameter(new NameValuePair(name, value));
		}
		try {
			int statusCode = client.executeMethod(post);
			if (statusCode != HttpStatus.SC_OK) {
				System.err.println("Method failed: " + post.getStatusLine());
			} else {
				return post.getResponseBodyAsString();
			}

			return null;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			post.releaseConnection();
		}

		return null;
	}

	public AccessToken reauthenticate(String code) {
		Map<String, String> M = new HashMap<String, String>();
		M.put("client_id", "a32e2312ea474c989f6dd94ade0d7695");
		M.put("client_secret", "1658c4c7bab8423dad311d33fdb73a17");
		M.put("grant_type", "authorization_code");
		M.put("redirect_uri", "http://localhost");
		M.put("code", code);

		String response = this.post("https://api.instagram.com/oauth/access_token?", M);

		if (response != null) {
			Gson gson = new Gson();
			AccessToken accessToken = gson.fromJson(response, AccessToken.class);
			return accessToken;
		}

		return null;
	}
}
