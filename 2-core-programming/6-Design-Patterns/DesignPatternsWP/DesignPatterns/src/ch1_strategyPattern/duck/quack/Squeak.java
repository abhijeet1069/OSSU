package ch1_strategyPattern.duck.quack;

public class Squeak implements QuackBehavior{

	@Override
	public void quack() {
		System.out.println("Squeak Squeak!!");
	}
}
