package instagramCrawler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crawler.main.MysqlCreds;

import instagramCrawler.AccessToken;
import instagramCrawler.Tag;

public class CrawlerDB extends MysqlCreds {
	private Connection connection;

	public CrawlerDB() {
		super();
		this.connection = super.getConnection();
	}

	/*
	 * private int getTagId() { Connection connection = getConnection(); if
	 * (connection == null) { return -1; } try { PreparedStatement prepareStatement
	 * = connection.prepareStatement("SELECT max(id) from tags;"); ResultSet rs =
	 * prepareStatement.executeQuery(); if (rs.next()) { int index = rs.getInt(1);
	 * return index; } } catch (Exception e) { e.printStackTrace(); } return -1; }
	 */
	public void saveTagInformation(Tag[] tags) {
		if (connection == null) {
			return;
		}
		try {
			PreparedStatement statement = connection.prepareStatement("REPLACE INTO tags (name, count) VALUES (?,?);");

			int i = 1;
			for (Tag tag : tags) {
				statement.setString(1, tag.getName());
				statement.setInt(2, tag.getMedia_count());

				statement.addBatch();
				i++;

				if (i % 1000 == 0 || i == tags.length) {
					statement.executeBatch(); // Execute every 1000 items.
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

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

	public void saveAcessToken(AccessToken acessToken) {
		if (connection == null) {
			return;
		}
		try {
			String token = acessToken.getAccess_token();
			PreparedStatement statement = connection.prepareStatement("REPLACE INTO token (token) VALUES (?);");
			statement.setString(1, token);
			statement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getAcessToken() {
		if (connection == null) {
			return null;
		}
		try {
			PreparedStatement statement = connection
					.prepareStatement("SELECT token FROM token ORDER BY id DESC LIMIT 1;");
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
