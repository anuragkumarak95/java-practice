package p2;

class Protection2 extends p1.Protection {

	Protection2() {

		System.out.println("Derived other package constructor");

		// class or package only
		// System.out.println("N = " + n);
		// class only
		// System.out.println("N_pri = " + n_pri);
		
		System.out.println("N_pro = " + n_pro);
		System.out.println("N_pub = " + n_pub);
	}
}