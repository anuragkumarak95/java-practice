package main;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Scanner;

public class heavy_boeing {

	public static void main(String[] args) {
	double temp=0,dig,ones=0,flag=0,count=0;
	for(int i=1;i<100;i++){
		ones=0;

		temp=i;
		do{
			
			dig = temp%2;
			if(dig==1){ones++;}
			temp = temp/2;
			System.out.println(temp);
		}while(temp>0.99);
		flag=0;
		
		for(int j = 2;j<ones;j++){
			flag=1;
		}
		if(flag==1){
			System.out.println(count);
			count++;}
		
	}
	System.out.println(count);
	
	}

}
