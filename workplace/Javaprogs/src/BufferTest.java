
public class BufferTest {

	public static void main(String[] args) {
		String name = "Gaurav";
		StringBuffer buff = new StringBuffer(name);
		System.out.println(buff);
		buff.append(" Java");
		System.out.println(buff);
	}

}
