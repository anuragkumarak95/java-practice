package Experimentals;

import java.util.StringTokenizer;

public class dynoarray {
/** trying to use a dynamically called array.*/
	

	public static void main(String[] args) {
		// trying to create a dynamic array of String to store the tokens created by StringTokenizer in respective order.:
		cons.give("Enter a Sentence: ");
		
		StringTokenizer tkz = new StringTokenizer(cons.take());//input String. also using my own created function to read input.
		
		int n=tkz.countTokens()//setting the limit length of the array.
				,i=0;
		String[] arr = new String[n];//array that will contain tokens of the input String on ascending index values.
		while(tkz.hasMoreTokens()){
			arr[i++]=tkz.nextToken();//saving all the respective tokens in the array.
			
		}
		cons.give(n+"\n");//no. of tokens created.
		for(String j : arr){
			cons.give(j);//straight print
		}
		cons.give("Reverse of the tokens:\n");
		for (int k=n-1;k>=0;k--){cons.give(arr[k] + " ");}//reverse print
	}

}