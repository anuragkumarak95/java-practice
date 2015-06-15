package p1;

public class Protection {
	
	int n = 1;
	private int n_pri = 2;
	protected int n_pro = 3;
	public int n_pub = 4;

	public Protection() {

		System.out.println("Base contructor");
		System.out.println("N = " + n);
		System.out.println("N_private = " + n_pri);
		System.out.println("N_protect = " + n_pro);
		System.out.println("N_ public = " + n_pub);
	}
}