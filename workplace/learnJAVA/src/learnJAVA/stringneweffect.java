package learnJAVA;

public class stringneweffect {

	public static void main(String[] args) {
		// TODO String new created will give false with same string == conditioning
		String s1 = "AK",s2 = "AK",s3 = new String("AK");
		if(s1==s2){System.out.println("true");}
		if(s1==s3){System.out.println("also true");}
		else{System.out.println("false for new String");}

	}

}
