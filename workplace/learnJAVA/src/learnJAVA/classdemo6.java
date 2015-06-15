package learnJAVA;

class box7{
	double wd,ht;
	
	box7(double wdin, double htin){
		wd = wdin;
		ht = htin;
	}
	
	double vol(){return ht*wd;}
}
public class classdemo6 {

	public static void main(String[] args) {
		// TODO creating parameterized constructor.
		
		box7 mybox = new box7(20,50);
		double res = mybox.vol();
		System.out.println("Result :" + res);

	}

}
