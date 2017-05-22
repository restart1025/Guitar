package QuackBehaviorImpl;

import Behavior.QuackBehavior;

public class MuteQuack implements QuackBehavior {

	@Override
	public void quack() {
		System.out.println("这只鸭子不会叫");
	}

}
