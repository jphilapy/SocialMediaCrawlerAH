package twitterCrawler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crawler.main.MysqlCreds;

import instagramCrawler.Tag;

/**
 *
 * @author Jeff Philapy I swiped some of this db code from Hung Doan's
 * implementation of the instagram code
 */
public class SaveToDB extends MysqlCreds {

    private Connection connection;

    /**
     * Constructor ... make db connection more global to the class
     *
     * @param filename - name of file where db credentials are stored
     */
    public SaveToDB(String filename) {
        super(filename);
        this.connection = super.getConnection();
    }

    /**
     * saves the top tag, in this instance, to db
     */
    public void saveTopTagDB(String topTag, int count) {

        if (connection == null) {
            return;
        }

        try {
            // prepare sql statement
            PreparedStatement statement = connection
                    .prepareStatement("REPLACE INTO topTwitterTags (name,count) VALUES (?,?);");

            if (topTag != null && !topTag.isEmpty()) {
                // setup fields
                // twitter returns tags with spaces in them...
                // so replace spaces in order to match instagram
                statement.setString(1, topTag.replaceAll("\\s", ""));
                statement.setInt(2, count);

                // run query
                statement.execute();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Save a list of keywords to the database
     *
     * @param tags
     */
    public void saveBatchTagsDB(String[][] tags) {

        if (connection == null) {
            return;
        }

        try {
            // prepare sql statement
            PreparedStatement statement = connection
                    .prepareStatement("REPLACE INTO topTenTwitterTags (name,count) VALUES (?,?);");

            int i = 1;
            for (String[] tag : tags) {
                if (tag[1] != null && !tag[1].isEmpty()) {
                    statement.setString(1, tag[1].replaceAll("\\s", ""));
                    statement.setString(2, tag[0]);

                    statement.addBatch();

                    if (i % 1000 == 0 || i == tags.length) {
                        statement.executeBatch(); // Execute every 1000 items.
                    }
                }

                i++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Query the keywords back out.
     *
     * @return
     */
    public List<Tag> getTopTags() {

        if (connection == null) {
            return null;
        }
        try {
            PreparedStatement statement = connection
                    .prepareStatement("SELECT id, name, count FROM tags ORDER BY count DESC LIMIT 50");
            ResultSet rs = statement.executeQuery();
            List<Tag> tags = new ArrayList<Tag>();
            while (rs.next()) {
                String name = rs.getString(2);
                int count = rs.getInt(3);
                tags.add(new Tag(name, count));
            }
            return tags;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
