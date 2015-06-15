class cmd {
	public static void main(String[] args)	{
		int b = args.length;
			for(int i=0;i<b;++i ){
	
				System.out.println(args[i]);
				int x = args[i].length();
				System.out.println("Total length: " + x);
			}	
			
	}
	
}