package p1;

class Derived extends Protection {
	
	Derived() {

		System.out.println("Derived constructor");
		System.out.println("N = " + n);

		// class only
		//System.out.println("N_private = " + n_pri);

		System.out.println("N_protect = " + n_pro);
		System.out.println("N_public = " + n_pub);
	}

}