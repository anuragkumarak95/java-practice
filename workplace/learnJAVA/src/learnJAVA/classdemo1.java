package learnJAVA;

import Experimentals.cons;

class box{
	double width;// class variables are called instance variables.
	String name;
}
public class classdemo1 {

	public static void main(String[] args) {
		//int name2;// these variables are called local variables.
		box b1;
		b1 = new box();//malloc keyword is used in c rather than new for same purpose.
		cons.give("Value of width is: " + b1.width);
		cons.give("Value of name is: " + b1.name);
		//cons.give("Value of name is: " + name2);
	}

}
