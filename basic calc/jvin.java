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

class area {
    public static void main(String[] args){
        double result=0.0;
        switch(args[0])
        {
        case "-r" : double len = Double.parseDouble(args[1]);
                    double bd = Double.parseDouble(args[2]);
                    result = len*bd;
        break;
        
        case "-s" : double edge = Double.parseDouble(args[1]);
                    result = edge*edge;
        break;
        
        case "-c" : double rad = Double.parseDouble(args[1]);
                    result = 3.14*rad*rad;
        break;
        
        case "-t" : double base = Double.parseDouble(args[1]);
                    double ht = Double.parseDouble(args[2]);
                    result = 0.5*base*ht;
        break;
        
        case "-h" :
        case "-help" : 
        default : System.err.println(" -r : rectange\n -s: square\n -c: circle\n -t: triangle\n These are the provided options.");    
        }
        
        if(args[0].equals("-r")||args[0].equals("-s")||args[0].equals("-c")||args[0].equals("-t"))
        System.out.println("Area is : "+ result);
    }
}