package learnJAVA;

public class enhanced_for_loop {

	public static void main(String[] args) {
		int a[] = {1,2,3,4,5,6};
		for (int num : a)
		{
			System.out.println("Value: " + (num + num));
		}
	}

}
