package twitterCrawler;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import com.crawler.main.ConnectToApi;
import twitter4j.Twitter;

/**
 *
 * @author Jeff Philapy
 */
public class TwitterConnect extends ConnectToApi {

    private boolean success = false;

    /**
     * We need this so we can tell other features of twitter, that this is a
     * verified app
     *
     * @param twitter
     * @param filename
     */
    public TwitterConnect(Twitter twitter, String filename) {
        super();

        // access twitter config file
        File propFile = new File(filename);

        Properties prop = new Properties();
        InputStream is = null;
        try {

            if (propFile.exists()) {
                is = new FileInputStream(propFile);
                prop.load(is);
            } else {
                System.out.println("missing a property file");
            }

            if (null == prop.getProperty("oauth.consumerKey") && null == prop.getProperty("oauth.consumerSecret")) {
                System.out.println("Make sure you configured the twitter4j property file named: " + filename);
                System.exit(0);
            } else {
                success = true;
            }

        } catch (IOException ioe) {
            System.out.println("Not real sure what, but you're not getting to twitter at the moment.");
            System.exit(-1);
        }
    }

    /**
     * tell if we are connected
     */
    public String toString() {
        if (success) {
            return "Connected to twitter\n";
        } else {
            return "Failed to connect to twitter\n";
        }
    }
}
