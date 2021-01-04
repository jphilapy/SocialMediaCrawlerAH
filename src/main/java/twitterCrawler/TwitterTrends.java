package twitterCrawler;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import twitter4j.Trend;
import twitter4j.Trends;
import twitter4j.Twitter;
import twitter4j.TwitterException;

/**
 *
 * @author Jeff Philapy
 */
public class TwitterTrends {

    private Trends trends;
    private ArrayList<HashtagTrend> topTrendsVol;
    private String name;
    private int vol;

    /**
     *
     * @param twitter Twitter connection object
     * @param woeid the twitter location id, i.e, for what city you want to get
     * results from.
     */
    public TwitterTrends(Twitter twitter, int woeid) {
        try {

            this.trends = twitter.getPlaceTrends(woeid);
            this.topTrendsVol = new ArrayList<HashtagTrend>();

            // it sorts, but now I need it to work on the limit. Doesn't seem
            // to be working correctly.
            int i = 0;
            for (Trend trend : this.trends.getTrends()) {
                vol = trend.getTweetVolume(); // get count
                name = trend.getName(); // get hastag

                if ((int) vol > 0 && i <= 9) {// don't let negative volume in, only get top ten

                    // need to remove hash symbol if it exist
                    Pattern p = Pattern.compile("\\A#?"); // pattern to look for
                    Matcher m = p.matcher(name); // text to search in
                    name = m.replaceAll(""); // replace # with nothing and save back to name

                    // removed hash, now add name, along with vol, to ArrayList
                    this.topTrendsVol.add(new HashtagTrend(vol, name));

                    i++;
                }
            }

            // now sort our HashtagTrend ArrayList
            SortbyVolume volSorted = new SortbyVolume();
            Collections.sort(this.topTrendsVol, volSorted);
        } catch (TwitterException te) {
            System.out.println("Failed to get trends: " + te.getMessage());
            System.exit(-1);
        } catch (NumberFormatException nfe) {
            System.out.println("WOEID must be number");
            System.exit(-1);
        }
    }

    /**
     * Returns tag with highest volume
     *
     * @return String
     */
    public String getTopTag() {
        return this.topTrendsVol.get(0).getTrendName();
    }

    /**
     * returns top tag volume ... see getTopTag()
     *
     * @return int
     */
    public int getTopTagVol() {
        return this.topTrendsVol.get(0).getTrendVol();
    }

    /**
     * Show what location we are looking for trends in
     *
     * @return String
     */
    public String getLocation() {
        return this.trends.getLocation().getName();
    }

    /**
     * Get a list of trends
     *
     * @return Array (string type)
     */
    public String[][] getTrends() {
        String[][] multi = new String[10][2];

        for (int i = 0; i < this.topTrendsVol.size(); i++) {
            multi[i][0] = this.topTrendsVol.get(i).getTrendVol() + "";
            multi[i][1] = this.topTrendsVol.get(i).getTrendName();
        }

        return multi;
    }

    /**
     * results a bit more formatted
     *
     * @return String
     */
    public String toString() {
        String out = "";
        for (int r = 0; r < this.topTrendsVol.size(); r++) {
            out += this.topTrendsVol.get(r) + "\n";
        }

        return out;
    }

    TwitterTrends() {
        throw new UnsupportedOperationException("Not supported yet."); // To change body of generated methods, choose
        // Tools | Templates.
    }

}

/**
 * hash tag object
 *
 * @author Jeff Philapy
 */
class HashtagTrend {

    int vol;
    String name;

    public HashtagTrend(int vol, String name) {
        this.vol = vol;
        this.name = name;
    }

    public void setTrend(int vol, String name) {
        this.vol = vol;
        this.name = name;
    }

    public int getTrendVol() {
        return this.vol;
    }

    public String getTrendName() {
        return this.name;
    }

    @Override
    public String toString() {
        return this.vol + " " + this.name;
    }

}

/**
 * Sort hastag by volume
 *
 * @author Jeff Philapy
 */
class SortbyVolume implements Comparator<HashtagTrend> {
    // Used for sorting in ascending order of volume

    public int compare(HashtagTrend a, HashtagTrend b) {
        return b.vol - a.vol;
    }
}
