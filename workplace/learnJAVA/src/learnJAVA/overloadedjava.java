package learnJAVA;

class overload{
	void test(){
		System.out.println("No parameters tested\n"+this.hashCode());}
	
	void test(int a){
		System.out.println("SINGLE parameters tested\n"+this.hashCode());}
	
	double test (double d){
		System.out.println("SINGLE double dataype tested\n"+this.hashCode());return d;}
	
	void test(int a,int b){
		System.out.println("DOUBLE parameters tested\n"+this.hashCode());}
}
public class overloadedjava {

	public static void main(String[] args) {
		// NOTE in polymorphism, many methods have same instance created and work at that instance together. being memory effiecient.
		overload ov = new overload();
		ov.test();
		ov.test(2.3);
		ov.test(3);
		ov.test(2,4);
	}

}
