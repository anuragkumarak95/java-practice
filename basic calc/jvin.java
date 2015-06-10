import java.util.Scanner;
class myname {

	public static void main(String[] args) {
		Scanner scanner = new Scanner (System.in);
		System.out.print("Enter your name\n");  
		String name = scanner.next(); // Get what the user types.		
		if(name.equals("anurag")){
			System.out.println("hi "+name);}
		else{System.out.println("wrong name...!!");}
	}

}

//basic calculator project.
class calc {
	public static void main(String[] args){
        String ch = "";
		do{
        System.out.println("Enter first no.: \n");
		Scanner first = new Scanner(System.in);
		int i = first.nextInt();
		
		System.out.println("Enter first no.: \n");
		Scanner second = new Scanner(System.in);
		int j = second.nextInt();

		System.out.println("1.ADD | 2.SUBTRACT | 3.MULTIPLY | 4.DIVIDE \n");
		Scanner ops = new Scanner(System.in);
		int option = ops.nextInt();
		
		int result = 0;
		switch(option)
		{
		case 1 : result=i+j;
		break;
		case 2 : result=i-j;
		break;
		case 3 : result=i*j;
		break;
		case 4 : result=i/j;
		break;
		default : System.out.println("Wrong option.");
		}
		System.out.println("result is : "+result);
        System.out.println("Wanna try again[y/n]::  ");
            Scanner cnfrm = new Scanner(System.in);
            ch = cnfrm.next();
        }while(ch.equals("y")||ch.equals("Y"));
	}
}