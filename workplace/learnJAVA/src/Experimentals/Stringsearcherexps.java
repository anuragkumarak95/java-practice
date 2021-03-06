package Experimentals;

import java.util.StringTokenizer;

class my{
	String word;
	StringTokenizer str;
	
	my(){
		word = "a";
		str = new StringTokenizer(word);
	}
	
	my(String word,StringTokenizer str){//constructor.
		this.word = word;
		this.str = str;
	}
	
	my(String str){
		word = str;
		this.str = new StringTokenizer(str);
	}
	
	void getpositions (){//search funtion to be implemented.
		int count = 0,cnt=0;
		System.out.print(word + " found in the sentence at ");//entery sentence.
		while(str.hasMoreTokens()){
			count++;
			String chk = str.nextToken();
			if(chk.equals(word)&&cnt==0){//checking for the first and only first match.
				cnt++;
				System.out.print(count);
			}
			else if(chk.equals(word)){//checking for further matches.
				cnt++;
				System.out.print(" & "+count);
			}
		}
		
		if(cnt == 0){
			cons.give(" no position.");//exit conditioned sentences for no result, single result and multiple results.
		}
		else if(cnt == 1){
			cons.give(" position.");
		}
		else {cons.give(" positions.");}

	}
	
}//user class endpoint.

public class Stringsearcherexps {

	public static void main(String args[]){
		cons.give("Enter your string to search : ");
		String word = cons.take();
		cons.give("Enter the sentence from which you need to search : ");
		String sent = cons.take();
		StringTokenizer str = new StringTokenizer(sent);//tokenizing the sentence given by the user.
		
		my my1 = new my(word,str);
		my1.getpositions();
				
		//trying the operation task again recursively.
		cons.give("\n Wanna try again [y/n] :");
		String cnf = cons.take(); 
		if(cnf.equals("y")||cnf.equals("Y")){
			main(args);//recursive calling of the main(String[] args) funtion.
		}
	
	
	}
	
}
