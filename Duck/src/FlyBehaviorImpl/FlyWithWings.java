package FlyBehaviorImpl;

import Behavior.FlyBehavior;

public class FlyWithWings implements FlyBehavior {

	@Override
	public void fly() {
		System.out.println("这只鸭子用翅膀飞");
	}

}
