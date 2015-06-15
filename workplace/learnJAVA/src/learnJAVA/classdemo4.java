package learnJAVA;

class box5{
	double wd,ht;
	
	double vol(double wdin,double htin){
		this.wd = wdin;
		this.ht = htin;
		double r = wd*ht;
		return r;
	}
}
public class classdemo4 {
	
	public static void main(String[] args) {
		// TODO trying to acces instance variable through a function in the class
		box5 mybox1;
		mybox1 = new box5();
		double res = mybox1.vol(20,15);
		System.out.println("Result :" + res);
	}

}
