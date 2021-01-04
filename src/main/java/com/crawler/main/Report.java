package com.crawler.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * 
 * @author Jeff Philapy
 *
 */
public class Report extends MysqlCreds {
	private Connection connection;
	
	/**
	 * Constructor ... make db connection more global to the class
	 * @param filename - name of file where db credentials are stored
	 */
	public Report(String filename) {
		super(filename);
		this.connection = super.getConnection();
	}
	
	public void queryForKeyword() {
		if (connection == null) {
			return;
		}

		try {
			// prepare sql statement
			PreparedStatement statement = connection
					.prepareStatement("SELECT DISTINCT twTags.name as tagName, twTags.count as twCount, inTags.count as inCount FROM topTenTwitterTags twTags LEFT JOIN tags inTags ON twTags.name = inTags.name");


			// run query
			ResultSet rs = statement.executeQuery();
			
			String column = " %-30s  %-20s  %-20s%n";
			System.out.format(column, "Keyword", "Twitter Count", "Instagram Count");
			System.out.format(column, "------------", "------------", "------------");
			
			String leftAlignFormat = "| %-30s | %-20s | %-20s|%n";
			String twCount;
			String inCount;
			 
			   while (rs.next()) {
				   twCount = rs.getString(2);
				   inCount = rs.getString(3);
					
				   // we show zeros instead of null or nothing.
				   if(twCount == null || twCount.isEmpty()) {
					   twCount = "0";
				   }
				   
				   if(inCount == null || inCount.isEmpty()) {
					   inCount = "0";
				   }
				   
				   System.out.format(leftAlignFormat, rs.getString(1), twCount, inCount);
			    }
			   
			   System.out.println();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
