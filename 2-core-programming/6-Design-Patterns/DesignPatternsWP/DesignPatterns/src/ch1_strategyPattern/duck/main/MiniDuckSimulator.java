package ch1_strategyPattern.duck.main;

import ch1_strategyPattern.duck.fly.FlyNoWay;

public class MiniDuckSimulator {
	public static void main(String[] args) {
		Duck mallard = new MallardDuck();
		mallard.performFly();
		mallard.performQuack();
		
		Duck model = new MallardDuck();
		model.performFly();
		model.setFlyBehavior(new FlyNoWay());
		model.performFly(); 

	}
}
