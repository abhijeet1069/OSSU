package ch1_strategyPattern.duck.quack;

public class Quack implements QuackBehavior{

	@Override
	public void quack() {
		System.out.println("Quack Quack!!");
	}

}
