package twitterCrawler;

import java.util.ArrayList;
import java.util.List;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;

/**
 *
 * @author Jeff Philapy
 */
public class TwitterKeyWordSearch {

    private String mySearchTerm;
    private Twitter twitter;
    private ArrayList<String> searchResults;

    /**
     *
     * @param mySearchTerm what are you looking for on twitter?
     * @param twitter Need twitter connection object.
     */
    public TwitterKeyWordSearch(String mySearchTerm, Twitter twitter) {
        this.mySearchTerm = mySearchTerm;
        this.twitter = twitter;
        this.searchResults = new ArrayList<String>();
    }

    /**
     * Runs the search against Twitter
     */
    public void runSearch() {

        String TestTerm = this.mySearchTerm;

        try {
            Query query = new Query(TestTerm);
            QueryResult result;

            do {
                result = twitter.search(query);
                List<Status> tweets = result.getTweets();
                int i = 0;
                for (Status tweet : tweets) {
                    //System.out.println("@" + tweet.getUser().getScreenName() + " - " + tweet.getText());
                    this.searchResults.add(i, "@" + tweet.getUser().getScreenName() + " - " + tweet.getText());
                    i++;
                }
            } while ((query = result.nextQuery()) != null);

            //System.exit(0);
        } catch (TwitterException te) {
            System.out.println("Failed to search tweets: " + te.getMessage());
            //System.exit(-1);
        }
    }

    /**
     * Takes an index, i.e., from a loop, then prints out a corresponding
     * ArrayList result
     *
     * @param i
     * @return String
     */
    public String getResults(int i) {
        return this.searchResults.get(i);
    }

    /**
     * How many results did we find?
     *
     * @return int
     */
    public int getResultSize() {
        return this.searchResults.size();
    }
}
