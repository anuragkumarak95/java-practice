package Experimentals;

public class calculator_project {
	
	public static void main(String[] args){
		String ch = " ";
		do{
		cons.give("Enter first number: ");
		double num1 = Double.parseDouble(cons.take());
		cons.give("Enter second number: ");
		double num2 = Double.parseDouble(cons.take());
		double res = 0.0;

		cons.give("1. ADD | 2. Sub | 3. Multiply | 4. Divide | 5. Modulus");
		int choice = Integer.parseInt(cons.take());
		
		switch(choice){
		case 1 : res = num1 + num2;
		break;
		case 2 : res = num1 - num2;
		break;
		case 3 : res = num1 * num2;
		break;
		case 4 : if(num2 == 0){cons.give("Result : infinity");}else{res = num1 / num2;}
		break;
		case 5 : if(num2==0){cons.give("Result : no remainder.");}else{res = num1 % num2;}
		break;
		default : cons.give("Wrong choice inputed, try again.");
		}
	
		if(choice==1 || choice==2 || choice==3 || (choice==4 && num2!=0) || (choice==5 && num2!=0)){
			cons.give("Result : " + res);
		}
		
		cons.give("Wanna try agina[ Y / N ]: ");
		ch = cons.take();
		
		}while(ch.equals("y")||ch.equals("Y"));
	}
	
}
