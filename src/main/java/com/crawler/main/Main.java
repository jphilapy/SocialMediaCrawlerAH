package com.crawler.main;

import java.util.Scanner;
/**
 * 
 * @author Jeff Philapy
 *
 */
public class Main {

	public static void main(String[] args) {
		Main instance = new Main();
		Scanner keyboard = new Scanner(System.in);
		int choice = -1;
		do {
			instance.displayMenu();
			choice = keyboard.nextInt();

			switch (choice) {
			case 1:
				TwitterMenu.main(args);
				break;
			case 2:
				InstagramMenu.main(args);
				break;
			case 3:
				System.out.println("REPORT");
				Report result = new Report("./db.properties");

				result.queryForKeyword();
				break;
			case 4:

				break;
			default:
				System.out.println("Please enter a valid choice from the menu");
			}
		} while (choice != 4);

		keyboard.close();
	}

	public void displayMenu() {
		System.out.println("***************");
		System.out.println("Main Menu");
		System.out.println("***************");
		System.out.println("");
		System.out.println("1. Run Twitter");
		System.out.println("2. Run Instagram");
		System.out.println("3. Run Report");
		System.out.println("-----------------------------------------------");
		System.out.println("4. Exit");
		System.out.println("");
		System.out.println("Enter your choice: ");
	}
}
