package main;

public class q3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		long n=1,temp,dig=10,flag=1;
		int count = 0;
		do{
			temp=n;
			do{
				if(temp%10==0){
				
					flag=0;temp=0;}
				else{
					
					dig = temp%10;
				temp= temp/10;
				if(n%dig!=0){flag=0;}
				}
			}while(temp>0);
			
			if(flag==1){
				System.err.println(count);
				count++;}
			n++;
			
		}while(count<=42);
		System.out.println(n-1);
	}

}
