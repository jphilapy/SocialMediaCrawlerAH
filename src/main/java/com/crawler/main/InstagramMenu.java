package com.crawler.main;

import java.util.Scanner;
import instagramCrawler.CrawlerService;
import instagramCrawler.Tag;

/**
 *
 * @author Hung Doan
 *
 */
public class InstagramMenu {

    @SuppressWarnings("static-access")
    public static void main(String[] args) {
        CrawlerService service = new CrawlerService();
        InstagramMenu instance = new InstagramMenu();
        Scanner keyboard = new Scanner(System.in);
        int choice = -1;
        do {
            instance.displayMenu();
            choice = keyboard.nextInt();
            switch (choice) {
                case 1:
                    // prompt for keyword
                    System.out.println("Enter the search keyword");

                    // grab keyword
                    String keyword = keyboard.next();

                    Tag[] data = service.readAllTags(keyword);

                    if (data != null) {
                        System.out.println("Searched for all tags with keyword " + keyword);
                        System.out.println("Statistics");
                        System.out.println("***************");
                        if (data.length > 0) {
                            System.out.println("Top tags found : " + data.length);
                            System.out.println("Most famous tag with the keyword is : " + data[0].getName()
                                    + " with a media count of : " + data[0].getMedia_count());
                            System.out.println("The data is saved in the database.");
                        } else {
                            System.out.println("Total tags found : " + data.length);
                        }
                    }
                    break;
                case 2:
                    Tag[] topTags = service.getTopTags();
                    if (topTags != null) {
                        System.out.println("Below is a satatistic of top tags: ");
                        System.out.println("*********************************");
                        for (Tag tag : topTags) {
                            System.out.println(tag);
                        }
                    }
                    break;
                case 3:

                    System.out.println("Open your browser and in the address bar paste the below line :");
                    System.out.println(
                            "https://api.instagram.com/oauth/authorize/?client_id=a32e2312ea474c989f6dd94ade0d7695&redirect_uri=http://localhost&response_type=code&scope=public_content");
                    System.out.println("The browser address will change to http://localhost?code=<SOME_CODE>");
                    System.out.println("Enter the code obtained in the previous step.");
                    String code = keyboard.next();
                    service.reauthenticate(code);
                    break;
                case 4:
                    Main.main(args);
                    break;
                case 5:
                    break;
                default:
                    System.out.println("Please enter a valid choice from the menu");
            }
        } while (choice != 5);

        keyboard.close();
    }

    public void displayMenu() {
        System.out.println("***************");
        System.out.println("Instagram Menu");
        System.out.println("***************");
        System.out.println("");
        System.out.println("1. Search for a tag");
        System.out.println("2. Find popular tag");
        System.out.println("3. Reauthenticate");
        System.out.println("4. Return to Main Menu");
        System.out.println("-----------------------------------------------");
        System.out.println("5. Exit");
        System.out.println("");
        System.out.println("Enter your choice: ");
    }
}
