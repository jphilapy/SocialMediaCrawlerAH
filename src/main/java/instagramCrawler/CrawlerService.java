package instagramCrawler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;

import instagramCrawler.UrlUtil;

public class CrawlerService {

	InstagramConnect http = new InstagramConnect();
	CrawlerDB db = new CrawlerDB();

	public Tag[] readAllTags(String keyword) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("q", keyword);
		String acessToken = db.getAcessToken();
		String response = http.get(UrlUtil.getTagSearchUrl(), params, acessToken);
		System.out.println("RESPONSE : " + response);
		if (InstagramConnect.ACCESS_TOKEN_CHANGED.equals(response)) {
			System.err.println("AUTHENTICATION EXPIRED. PLEASE REAUTHENTICATE USING CHOSING THE MENU OPTION 3.");
			return null;
		}
		if (response != null) {
			Gson gson = new Gson();
			TagResponse tags = gson.fromJson(response, TagResponse.class);
			if (tags != null) {
				db.saveTagInformation(tags.getData());
				return tags.getData();
			}
		}
		return null;
	}

	public Tag[] getTopTags() {
		List<Tag> topTags = db.getTopTags();
		return topTags.toArray(new Tag[0]);
	}

	public void reauthenticate(String code) {
		AccessToken acessToken = http.reauthenticate(code);
		db.saveAcessToken(acessToken);
	}
}
