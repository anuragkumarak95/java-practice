package learnJAVA;
//single inheritance here.

class boxinheri{
	double ln,wd,ht;
	
	boxinheri(){//default constructor
		ln = -1;
		wd = -1;
		ht = -1;
	}
	
	boxinheri(double ln,double wd,double ht){//parameterized contructor.
		this.ln = ln;
		this.wd = wd;
		this.ht = ht;
	}
	
	boxinheri(double d){
		ln = wd = ht = d;//multiple assignment operations in one syntax here.
	}
	
	boxinheri(boxinheri b){//call by refrence constructor
		ln = b.ln;
		wd = b.wd;
		ht = b.ht;
	}
	
	double vol(){
		return ln*wd*ht;
	}
}

class boxweight extends boxinheri{
	double wt;
	boxweight(double wd,double ht,double dept,double wt){
		this.wd = wd;
		this.ht = ht;
		this.ln = dept;
		this.wt = wt;
	}
	
	void show(){
		System.out.println("Volume of Box : "+wd*ln*wt*ht+"   :-details-: Width : "+wd+" || Depth : "+ln+" || Height : "+ht+" || Weight : "+wt+" || Superclass inherited is : "+super.getClass().getName());
	}
}


public class inheritance_exp {

	public static void main(String[] args) {
		// TODO using the inheritance concept on classes.
		boxweight b1 = new boxweight(1,2,3,4),b2 = new boxweight(2,4,6,8);
		b1.show();
		b2.show();
	}

}
