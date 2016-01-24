package main;

public class q4 {

	public static void main(String[] args) {
		
		int f1 = 2;
		int f2 = 3,f3=0;
		
		int temp=0,rev=0,flag=0,wola=0;
		
		do{
			f3 = f1+f2;
			f1 = f2;
			f2 = f3;
			//fibo
	
			if(f3>=1000){
				/*System.out.println(f3);*/
				temp = f3;
				do{
					
					rev = rev*10 + temp%10;
					
					temp=temp/10;
					
				}while(temp<0);
				
				flag=0;
				
				for(int i=2;i<rev;i++){
					flag=1;
				}
				if(flag!=1){wola = f3;}
			}
			
		}while(f2<10000);
		
		System.out.println(wola);
		
		
	}
	
}
