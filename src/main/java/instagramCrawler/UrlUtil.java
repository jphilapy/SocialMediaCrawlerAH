package instagramCrawler;

public class UrlUtil {
	private final static String BASE_API_URL = "https://api.instagram.com/v1";

	public static String getTagSearchUrl() {
		return BASE_API_URL + "/tags/search";
	}
}
