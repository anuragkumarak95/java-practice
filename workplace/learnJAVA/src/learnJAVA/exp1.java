package learnJAVA;

import Experimentals.cons;

public class exp1 {

	public static void main(String[] args) {
		int a=1;
		if((a==1)||(++a!=2))//short circuit OR, only check till true
		{
			cons.give(a);
		}
		
		if((a==1)|(++a!=2))//long circuit OR, checks all the conditions provided
		{
			cons.give(a);
		}
	}

}//9654897841
//gaurav.katwatra@ymail.com
