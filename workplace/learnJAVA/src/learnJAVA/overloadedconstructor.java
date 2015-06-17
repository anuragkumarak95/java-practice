package learnJAVA;

class boxer{
	double ln,wd,ht;
	
	boxer(){
		ln = -1;
		wd = -1;
		ht = -1;
		System.out.println(this.hashCode());
	}
	
	boxer(double ln,double wd,double ht){
		this.ln = ln;
		this.wd = wd;
		this.ht = ht;
		System.out.println(this.hashCode());
	}
	
	boxer(double ln){
		this.ln = ln;
		System.out.println(this.hashCode());
	}
	
	boxer(boxer b){
		ln = b.ln;
		ht = b.ht;
		wd = b.wd;
		System.out.println(this.hashCode());
	}
	boxer(boxer b,boxer b2,boxer b3){
		ln = b.ln;
		ht = b2.ht;
		wd = b3.wd;
		System.out.println(this.hashCode());
	}
	
	void show(){System.out.println(ln+" "+wd+" "+ht+" "+this.hashCode());}//display content.
	
}

public class overloadedconstructor {

	public static void main(String[] args) {
		// TODO Constructor overloading
		boxer bx1 = new boxer(),
			  bx2 = new boxer(1,2,3),
			  bx3 = new boxer(1),
			  bx4 = new boxer(bx2),
			  bx5 = new boxer(bx1,bx2,bx3);
		
		bx1.show();
		bx2.show();
		bx3.show();
		bx4.show();
		bx5.show();

	}

}
