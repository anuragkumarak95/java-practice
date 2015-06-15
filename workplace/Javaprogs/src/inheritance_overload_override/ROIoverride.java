package inheritance_overload_override;

public class ROIoverride {

	public static void main(String[] args) {
		Bank b1;
		b1 = new SBI();
		System.out.println("Rate of intrest of SBI: " + b1.ROI());
		b1 = new HDFC();
		System.out.println("Rate of intrest of HDFC: " + b1.ROI());
		b1 = new ICICI();
		System.out.println("Rate of intrest of ICICI: " + b1.ROI());
	}

}

class Bank {
	
	int ROI(){
		return 0;
	}
}

class SBI extends Bank {
	
	int ROI(){
		
		return 7;
	}
}

class HDFC extends Bank {
	
	int ROI(){
		
		return 8;
	}
}

class ICICI extends Bank {
	
	int ROI(){
		
		return 10;
	}
}
