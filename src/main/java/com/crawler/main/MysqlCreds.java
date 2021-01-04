package com.crawler.main;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 
 * @author Jeff Philapy
 * 
 * mysql connection code and jdbc code was written by Hung Doan, and adapted to here
 */
public class MysqlCreds {
	private static String mUser;
	private static String mPass;
	private Connection connection;

	/**
	 * default constructor ... in case no file is specified.
	 * 
	 * @param filename the name where the db creds can be found
	 */
	public MysqlCreds() {
		this.getCredentials("./db.properties");
	}

	/**
	 * Constructor
	 * 
	 * @param filename config file
	 */
	public MysqlCreds(String filename) {
		this.getCredentials(filename);
	}

	/**
	 * Get credentials from config file
	 * 
	 * @param filename config file
	 */
	private void getCredentials(String filename) {
		// access mysql config file
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

			if (null == prop.getProperty("mysql.user") && null == prop.getProperty("mysql.pass")) {
				System.out.println("Make sure you configured the mysql property file named: " + filename);
				System.exit(0);
			} else {
				mUser = prop.getProperty("mysql.user");
				mPass = prop.getProperty("mysql.pass");
			}

		} catch (IOException ioe) {
			System.out.println("Not real sure what, but youre not getting to mysql at the moment.");
			System.exit(-1);
		}

		this.connection = getConnection();
	}

	/**
	 * Connect to mysql
	 * 
	 * @return Connection type
	 */
	public static Connection getConnection() {
		try {
			loadDriver();
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlerdb", MysqlCreds.mUser,
					MysqlCreds.mPass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("No MySQL Connection was detected. Is MySQL running?");
			System.exit(0);
		}
		return null;
	}

	/**
	 * load JDBC driver
	 */
	public static void loadDriver() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("Cannot locate JDBC Driver for MySql.");
			System.exit(0);
		}
	}

	/**
	 * Make connection object, accessible
	 * 
	 * @return
	 */
	public Connection connection() {
		return this.connection;
	}
}
