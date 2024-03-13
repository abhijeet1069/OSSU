package ch1_strategyPattern.duck.main;

import ch1_strategyPattern.duck.fly.FlyBehavior;
import ch1_strategyPattern.duck.quack.QuackBehavior;

public abstract class Duck {
	protected FlyBehavior flyBehavior;
	protected QuackBehavior quackBehavior;
	
	public Duck() {}
	
	public abstract void display();
	
	public void performQuack() {
		quackBehavior.quack();
	}
	
	public void performFly() { //These methods change with new functionality
		flyBehavior.fly();
	}
	
	public void swim() { //These methods don't change
		System.out.println("All ducks float, even decoys!!");
	}

	public void setFlyBehavior(FlyBehavior flyBehavior) {
		this.flyBehavior = flyBehavior;
	}

	public void setQuackBehavior(QuackBehavior quackBehavior) {
		this.quackBehavior = quackBehavior;
	}
	
	
}
