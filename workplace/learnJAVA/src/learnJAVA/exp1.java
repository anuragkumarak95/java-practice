package learnJAVA;

public class exp1 {

	public static void main(String[] args) {
		int a=1;
		if((a==1)||(++a!=2))//short circuit OR, only check till true
		{
			System.out.println(a);
		}
		
		if((a==1)|(++a!=2))//long circuit OR, checks all the conditions provided
		{
			System.out.println(a);
		}
	}

}//9654897841
//gaurav.katwatra@ymail.com
