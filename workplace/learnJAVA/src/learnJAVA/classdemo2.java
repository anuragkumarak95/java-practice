package learnJAVA;


class box1{
	double width;
	double height;
}
public class classdemo2 {

	public static void main(String[] args) {
		// TODO class box creation demo:
		box1 mybox;
		mybox = new box1();
		mybox.width =10;
		mybox.height = 20;
		double vol = mybox.width * mybox.height;
		
		System.out.println("Volume of mybox: " + vol);
	}

}
