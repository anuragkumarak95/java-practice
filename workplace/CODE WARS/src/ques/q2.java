/*	AHVAAN 2K15:
 * 
 * CODE WARS - DEBUGGING QUESTION
 * 
 * Participant Unique ID : ________________
 * Participant Name : ___________________
 * Participant College Name : ______________________________
 * 
 * Below code is used for MATRIX MULTIPLICATION.
 *  
 * There are many intentional Runtime & Logical bugs/errors in the below given code, 
 * participants task is to debug/remove-error-from the code and generate the true value for the MATRIX MULTIPLICATION.
 * 
 * ALL THE BEST.
 */


package ques;

import java.util.Scanner;

public class q2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a[][] = new int[10][10], b[][]=new int[10][10],c[][]=new int[10][10];
		int x,y,i,j,m,n;


		System.out.println("\nEnter the number of rows and columns for Matrix A:::\n\n");
		x= new Scanner(System.in).nextInt();
		
		y = new Scanner(System.in).nextInt();

		// x denotes number rows in matrix A
		// y denotes number columns in matrix A

		System.out.println("\n\nEnter elements for Matrix A :::\n\n");

		for(i=0;i<x;i++)
		{
			for(j=0;j<y;j++)
			{
				a[i][j]= new Scanner(System.in).nextInt();
				
			}
			System.out.println("\n");
		}



		System.out.println("\n\nMatrix A :\n\n");

		for(i=0;i<x;i++)
		{
			for(j=0;j<y;j++)
			{
				System.out.println("\t"+a[i][j]);
			}
			System.out.println("\n\n");
		}

		System.out.println("\n-----------------------------------------------------------\n");

		System.out.println("\nEnter the number of rows and columns for Matrix B:::\n\n");
		m=new Scanner(System.in).nextInt();
		n=new Scanner(System.in).nextInt();

		// m denotes number rows in matrix B
		// n denotes number columns in matrix B


		System.out.println("\n\nEnter elements for Matrix B :::\n\n");

		for(i=0;i<m;i++)
		{
			for(j=0;j<n;j++)
			{
				b[i][j]=new Scanner(System.in).nextInt();
			}
			System.out.println("\n");
		}


		System.out.println("\n\nMatrix B :\n\n");

		for(i=0;i<m;i++)
		{
			for(j=0;j<n;j++)
			{
				System.out.println("\t"+b[i][j]);
			}
			System.out.println("\n\n");
		}

		if(y==m)
		{

			for(i=0;i<x;i++)
			{
				for(j=0;j<n;j++)
				{
					c[i][j]=0;
					for(int k=0;k<m;k++)
					{
						c[i][j]=c[i][j]+a[i][k]*b[k][j];
					}
				}
			}

			System.out.println("\n-----------------------------------------------------------\n");

			System.out.println("\n\nMultiplication of Matrix A and Matrix B :\n\n");

			for(i=0;i<x;i++)
			{
				for(j=0;j<n;j++)
				{
					System.out.println("\t"+c[i][j]);
				}
				System.out.println("\n\n");
			}
		}
		else
		{
			System.out.println("\n\nMultiplication is not possible");
		}

	}

}
