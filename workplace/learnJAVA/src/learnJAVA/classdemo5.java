package learnJAVA;

class box6{
	double wd,ht;
	
	box6(){
		wd = 10;
		ht = 20;
	}
	
	double vol(){return ht*wd;}
}
public class classdemo5 {

	public static void main(String[] args) {
		// TODO creating default constructor.
		box6 mybox1 = new box6();
		System.out.println("Width :" + mybox1.wd);
		System.out.println("Height :" + mybox1.ht);

		double res = mybox1.vol();
		System.out.println("Result :" + res);

	}

}
