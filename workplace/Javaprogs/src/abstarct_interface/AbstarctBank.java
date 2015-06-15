package abstarct_interface;

abstract class Bank{
	
	abstract double ROI();
	void service(){
		System.out.println("1. Credit Card");
		System.out.println("2. Saving Account");			
	}
}

class HDFC extends Bank {
	
	double ROI(){
		return 10;
	}
}

class SBI extends Bank {
	
	double ROI(){
		return 7;
	}	
}


public class AbstarctBank {

	public static void main(String[] args) {
		HDFC hdfc = new HDFC();
		SBI sbi = new SBI();
		System.out.println("Rate of intrest HDFC: "+hdfc.ROI());
		System.out.println("Rate of intrest SBI: "+sbi.ROI());
		System.out.println("Services of HDFC: ");
		hdfc.service();
		System.out.println("Services of SBI: ");
		sbi.service();
	}

}
