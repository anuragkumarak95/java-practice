package object_and_classes;

import java.util.Scanner;

class clacu {

	public static void main(String args[]) {

		System.out.println();
		System.out.println("Choose your option: ");

		System.out.println("1. Addition ");
		System.out.println("2. Subtraction ");
		System.out.println("3. Multiplication ");
		System.out.println("4. Modulus ");
		System.out.println("5. Divide ");
		System.out.println();
		System.out.print("Choice is: ");

		Scanner input = new Scanner(System.in);

		int choice = input.nextInt();

		double first, second;

		System.out.println();
		System.out.print("Please enter First number : ");

		first = input.nextDouble();

		System.out.print("Please enter Second number: ");

		second = input.nextDouble();
		System.out.println();

		//Scanner frt = new Scanner(System.in);

		oper ob1 = new oper();

		double result = 0;

		switch(choice) {

			case 1:
				System.out.println("Your choice is Addition.");
				result = ob1.add(first, second);
				break;
			case 2:
				System.out.println("Your choice is Subtraction.");
				result = ob1.subt(first, second);
				break;
			case 3:
				System.out.println("Your choice is Multiplication.");
				result = ob1.multi(first, second);
				break;
			case 4:
				System.out.println("Your choice is Modulus.");
				result = ob1.mod(first, second);
				break;
			case 5:
				System.out.println("Your choice is Divide.");
				result = ob1.div(first, second);
				break;		
			default:
				System.out.println("Please choose above given option. It's wrong choice " + choice);		

		}
		
			System.out.println("Answer is: " + result);
		
	} 
}


class oper {

	public double add(double num1, double num2) {

		return num1 + num2;
	}

	public double subt(double num1, double num2) {

		return num1 - num2;
	}

	public double multi(double num1, double num2) {

		return num1 * num2;
	}

	public double mod(double num1, double num2) {

		double r=0;

		if(num2==0) {
			System.out.println("Division by zero");
		}
		else 
			r = num1 % num2;
			
		return r;
	}

	public double div(double num1, double num2) {

		double r=0;

		if(num2==0) {
			System.out.println("Division by zero");
		}
		else 
			r = num1 / num2;
			
		return r;
	}	
}