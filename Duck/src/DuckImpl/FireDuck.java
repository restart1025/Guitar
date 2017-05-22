package DuckImpl;

import Duck.Duck;
import FlyBehaviorImpl.FlyNoWay;
import QuackBehaviorImpl.MuteQuack;

public class FireDuck extends Duck {

	public FireDuck() {
	    quackBehavior = new MuteQuack();
	    flyBehavior = new FlyNoWay();
	}
	
	public void display(){
		System.out.println("这只鸭子的外观是灰色");
	}
	public void swim(){
		System.out.println("这只鸭子的游泳行为");
	}
}
