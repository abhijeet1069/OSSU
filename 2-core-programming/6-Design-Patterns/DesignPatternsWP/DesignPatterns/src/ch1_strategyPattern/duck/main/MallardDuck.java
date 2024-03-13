package ch1_strategyPattern.duck.main;

import ch1_strategyPattern.duck.fly.FlyWithWings;
import ch1_strategyPattern.duck.quack.Quack;

public class MallardDuck extends Duck{

	public MallardDuck() {
		quackBehavior = new Quack();
		flyBehavior = new FlyWithWings();
	}
	
	@Override
	public void display() {
		// TODO Auto-generated method stub
		
	}

}
