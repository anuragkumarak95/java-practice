package Experimentals;

import java.util.Scanner;

public class cons {
	//console input function, takes input as String.
	 @SuppressWarnings("resource")
	public static String take(){
		Scanner scn = new Scanner(System.in);
		return scn.nextLine();}
	 
	 /** console output functions. */
	public static void give(String txt){System.out.println(txt);}
	public static void give(int txt){System.out.println(txt);}
	public static void give(double txt){System.out.println(txt);}
	public static void give(float txt){System.out.println(txt);}
	public static void give(boolean txt){System.out.println(txt);}
	
	//also array output functions.
	public static void give(String[] txt){
		for(String arr : txt){System.out.println(arr);}}
	public static void give(int[] txt){
		for(int arr : txt){System.out.println(arr);}}
	public static void give(double[] txt){
		for(double arr : txt){System.out.println(arr);}}
	public static void give(float[] txt){
		for(float arr : txt){System.out.println(arr);}}


}
