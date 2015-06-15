package p1;

class SamePackage {
		
		SamePackage() {

			Protection p = new Protection();
			
			System.out.println("Same package constructor");
			System.out.println("N = " + p.n);
			
			// class only
			// System.out.println("N_private = " + p.n_pri);
			
			System.out.println("N_protected = " + p.n_pro);
			System.out.println("N_public = " + p.n_pub);
	}
}