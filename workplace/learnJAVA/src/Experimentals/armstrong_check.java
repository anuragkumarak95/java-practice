package Experimentals;

public class armstrong_check {

	public static void main(String[] args) {
		// TODO check the number for armstrong.
		cons.give("Enter the number to check: ");
		int num = Integer.parseInt(cons.take());
		int test = num;
		 int arms=0;
		do{		
			 arms = arms + ((test%10)*(test%10)*(test%10));
			 test = test / 10;
		}while(test>0);
		
		if(num == arms){cons.give(num + " is a Armstrong number.");}
		else{cons.give(num + " is not an Armstrong number.");}
	}

}
