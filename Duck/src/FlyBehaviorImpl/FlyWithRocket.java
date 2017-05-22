package FlyBehaviorImpl;

import Behavior.FlyBehavior;

public class FlyWithRocket implements FlyBehavior {

	@Override
	public void fly() {
		System.out.println("这只鸭子用火箭飞");
	}

}
