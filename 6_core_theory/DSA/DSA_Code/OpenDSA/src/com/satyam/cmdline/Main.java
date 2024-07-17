package com.satyam.cmdline;

import java.io.File;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		String filename = args[0];
		beginParsing(filename);
	}
	
	public static void beginParsing(String filename) {
		try {
			Scanner sc = new Scanner(new File(filename));
			while(sc.hasNext()) {
				String cmd = sc.next();
				double x; double y; double radius;
				switch(cmd) {
				
				case "debug":
					System.out.println("debug cmd activated");
					break;
				
				case "add":
					x = sc.nextDouble();
					y = sc.nextDouble();
					String name = sc.next();
					System.out.println("Insert node at "+x+" "+y+" with name "+name);
					break;
				
				case "delete":
					x = sc.nextDouble();
					y = sc.nextDouble();
					System.out.println("Remove node at "+x+" "+y);
					break;
					
				case "search":
					x = sc.nextDouble();
					y = sc.nextDouble();
					radius = sc.nextDouble();
					System.out.println("Search for node near "+x+" "+y+" within radius of "+radius);
					break;
				
				default :System.out.println("Unrecognized input "+cmd);
						 break;
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
