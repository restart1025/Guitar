package Duck;

import Behavior.FlyBehavior;
import Behavior.QuackBehavior;

public abstract class Duck {

	protected QuackBehavior quackBehavior;
	protected FlyBehavior flyBehavior;
	public void setQuackBehavior(QuackBehavior quackBehavior) {
		this.quackBehavior = quackBehavior;
	}
	public void setFlyBehavior(FlyBehavior flyBehavior) {
		this.flyBehavior = flyBehavior;
	}
	/**
	 * 鸭子的游泳
	 */
	public void swim(){
		
	}
	/**
	 * 鸭子的外观
	 */
	public void display(){
		
	}
	/**
	 * 鸭子的叫声
	 */
	public void performQuack() {
		quackBehavior.quack();
	}
	/**
	 * 鸭子的飞行
	 */
	public void performFly() {
		flyBehavior.fly();
	}
	
}
