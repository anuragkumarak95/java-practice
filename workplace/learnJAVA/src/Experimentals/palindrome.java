package Experimentals;

public class palindrome {

	public static void main(String[] args) {
		// TODO palindrome checking.
		cons.give("Enter the String to check: ");
		String chk = cons.take();
		palidchk(chk);
		
		cons.give("Enter a number to check: ");
		int chknum = Integer.parseInt(cons.take());
		palidchk(chknum);
		
	}
	
	static void palidchk(String str){//String palindrome check function.
		int len = str.length();
		String pl = "";
		for(int i=0;i<len;i++){
			pl = str.charAt(i) + pl;
		}
		
		if(str.equals(pl)){cons.give(str + " is a palindrome String.");}
		else{cons.give(str + " is not a palindrome String.");}
	}
	
	static void palidchk(int num){//Inetger. palindrome check function.
		int test = num, pl = 0;
		do{
			pl = pl*10 + (test % 10);
			test = test /10;
		}while(test>0);
		
		if(pl == num){cons.give(num + " is a palindrome number.");}
		else {cons.give(num + " is not a palindrome number.");}
	}

}