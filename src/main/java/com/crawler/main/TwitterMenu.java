package com.crawler.main;

import java.util.Scanner;

import instagramCrawler.CrawlerService;
import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitterCrawler.SaveToDB;
import twitterCrawler.TwitterConnect;
import twitterCrawler.TwitterKeyWordSearch;
import twitterCrawler.TwitterTrends;

/**
 * Prints out
 * 
 * @author Jeff Philapy & Hung Doan Jeff: Twitter related code... Hung Doan,
 *         Menu
 */
public class TwitterMenu extends InstagramMenu {

	// setup db call
	static SaveToDB dbTwitter = new SaveToDB("./db.properties");

	public static void main(String[] args) {

		/** SETUP TWITTER4J **/
		// create twitter object... need this for other stuff.
		Twitter twitterObj = new TwitterFactory().getInstance();

		// Tell twitter object where to find config values.
		new TwitterConnect(twitterObj, "./twitter4j.properties");
		/** END SETTING UP TWITTER4J **/

		// Get Twitter trends
		int cityId = 2427032;
		String topTag = "";

		TwitterTrends trend = new TwitterTrends(twitterObj, cityId);

		TwitterMenu twitterInstance = new TwitterMenu();
		Scanner keyboard = new Scanner(System.in);
		int choice = -1;

		do {
			twitterInstance.displayMenu();
			choice = keyboard.nextInt();
			switch (choice) {
			case 1:
				// get a list of top trending keywords
				System.out.println("Trends from: " + trend.getLocation());
				System.out.println();
				System.out.println(trend.toString());

				dbTwitter.saveBatchTagsDB(trend.getTrends());

				System.out.println("Top Tag: " + trend.getTopTag() + " -- vol " + trend.getTopTagVol());
				System.out.println();
				break;
			case 2:
				// get a list of posts using the TOP trending keyword.
				topTag = trend.getTopTag();

				System.out.println("Top Tag: " + topTag);
				System.out.println();

				if (topTag != null) {

					// search twitter
					TwitterKeyWordSearch mySearch = new TwitterKeyWordSearch(topTag, twitterObj);
					mySearch.runSearch();
					for (int i = 0; i < mySearch.getResultSize(); i++) {
						System.out.println(mySearch.getResults(i));
					}
				}
				break;
			case 3:
				CrawlerService service = new CrawlerService();

				for (String[] trendItem : trend.getTrends()) {
					service.readAllTags(trendItem[1].replaceAll("\\s", ""));
				}

				break;
			case 4:
				Main.main(args);
				break;
			default:
				System.out.println("Please enter a valid choice from the menu");
			}
		} while (choice != 5);

		keyboard.close();
	}

	/**
	 * prints a menu to the console
	 */
	public void displayMenu() {
		System.out.println("**************");
		System.out.println("Twitter Menu");
		System.out.println("**************");
		System.out.println("");
		System.out.println("1. Search Twitter for top trending keywords");
		System.out.println("2. Find twitter post containing the top term");
		System.out.println("3. Search Instagram for trending Twitter terms");
		System.out.println("4. Return to Main Menu");
		System.out.println("-----------------------------------------------");
		System.out.println("5. Exit");
		System.out.println("");
		System.out.println("Enter your choice: ");
	}
}
