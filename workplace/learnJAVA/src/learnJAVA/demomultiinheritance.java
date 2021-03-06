package learnJAVA;

class multibox{
	private double ln,wd,ht;
	
	multibox(double ln,double wd,double ht){
		this.ln = ln;
		this.wd = wd;
		this.ht = ht;
	}
	
	multibox(){
		ln = wd = ht = -1;
	}
	multibox(double all){
		ln = wd = ht = all;
	}
	
	double volume(){
		return ln*wd*ht;}
	void show(){
		System.out.print("Depth : "+ln+" || Width : "+wd+" || Height : "+ht);
	}
	
}

class multiboxweight extends multibox{

double wt;

multiboxweight(double ln,double wd,double ht,double wt){
	super(ln,wd,ht);
	this.wt = wt;
}
	void show(){
		super.show();
		System.out.print(" || Weight : "+wt);
	}
}

class shipment extends multiboxweight{
	double cost;
	shipment(double ln,double wd,double ht,double wt,double cost){
		super(ln,wd,ht,wt);
		this.cost = cost;
	}
	
	void show(){
		super.show();
		System.out.println(" || Volume : "+ volume());
	}
}

public class demomultiinheritance {

	public static void main(String[] args) {
		// TODO using multi inheritance and private instances.
		shipment s1 = new shipment(1,2,3,4,5),s2 = new shipment(2,4,6,8,10);
		s1.show();
		s2.show();
		System.out.println(s1.cost + s1.wt);//non-private can be accesed outside the class.
	}

}
