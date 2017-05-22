package DuckImpl;

import Duck.Duck;
import FlyBehaviorImpl.FlyWithRocket;
import QuackBehaviorImpl.Quack;

public class MallardDuck extends Duck {

	public MallardDuck() {
	      quackBehavior = new Quack();
	      flyBehavior = new FlyWithRocket();
	}
	
	public void display(){
		System.out.println("这只鸭子的外观是白色");
	}
	public void swim(){
		System.out.println("这只鸭子的游泳行为");
	}
	
}
