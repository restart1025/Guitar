package DuckImpl;

import Duck.Duck;
import FlyBehaviorImpl.FlyWithWings;
import QuackBehaviorImpl.Squeak;

public class RubberDuck extends Duck {

	public RubberDuck() {
	    quackBehavior = new Squeak();
	    flyBehavior = new FlyWithWings();
	}
	
	public void display(){
		System.out.println("这只鸭子的外观是黄色");
	}
	public void swim(){
		System.out.println("这只鸭子的游泳行为");
	}
}
