package learnJAVA;
//it is always an incomplete class
//its purpose is to creat a design which is shared by other developers..
// NOTE : abstract class is only declared in itself as a parent and defined in its classes.
// when we dont no the use of a class, then we use abstract class format for it.

abstract class animal{//the abstract class used to define the common behaviour of animals as a template.
	int a=3;
	abstract void habit();;
}

class dog extends animal{
	void habit(){
		System.out.println("BARK BARK " + super.hashCode()+"  "+a);
	}
}

class cat extends animal{
	void habit(){
		System.out.println("Meeeow...!! " + super.hashCode()+"  "+a);
	}
}

class lion extends animal{
	void habit(){
		System.out.println("ROAAAR!! " + super.hashCode()+"  "+a);
	}
}

public class abstractclassexp {

	public static void main(String args[]){
		dog d = new dog();cat c = new cat();
		lion l = new lion();
		d.habit();
		System.out.println(d instanceof dog);// checking the instance property of the object d for being instance of dog class.
		c.habit();
		l.habit();
	}
	
}
