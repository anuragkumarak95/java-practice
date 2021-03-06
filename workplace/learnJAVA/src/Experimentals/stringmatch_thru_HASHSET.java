package Experimentals;

import java.util.HashSet;
import java.util.StringTokenizer;

class searcher{
	String word,sent;
	
	searcher(){
		word = " ";
		sent = " ";
	}
	
	searcher (String word, String sent){
		this.sent = sent;
		this.word = word;
	}
	
	void find(){
		int count=0;
		StringTokenizer str = new StringTokenizer(sent);//converting string into tokens
		HashSet<String> set = new HashSet<String>();//    & saving those tokens in the hashset saving it distinctively.
		while(str.hasMoreTokens()){
			set.add(str.nextToken());
			System.err.println(set);
		}
		
		for (String chk : set){
			System.err.println(chk);
			if(chk.equals(word)){count++;cons.give("Word matched in the sentence.");}//match case.
		}
		if(count==0){
			cons.give("No match found in the sentence."+count);}//no match case.
	}
	
}

public class stringmatch_thru_HASHSET {

	public static void main(String[] args) {
		// TODO matching the string provided in the available sentence using hashset.
		cons.give("Enter the word to search : ");//taking the 2 strings in which this search algo will work.
		String word = cons.take();
		cons.give("Enter the sentence : ");
		String sent = cons.take();
		
		searcher s1 = new searcher(word,sent);
		s1.find();//calling the search.
		
		//recursive calling of the main function here.
		cons.give("Wanna try again [y/n] : ");
		String cnf = cons.take();
		if(cnf.equals("y")||cnf.equals("Y")){
			main(args);
		}
		else{cons.give("Thank you, BYE.");}
	}

}
