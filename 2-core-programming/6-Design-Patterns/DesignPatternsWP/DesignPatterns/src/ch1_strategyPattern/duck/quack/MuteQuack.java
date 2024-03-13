package ch1_strategyPattern.duck.quack;

public class MuteQuack implements QuackBehavior{

	@Override
	public void quack() {
		System.out.println("<<Silence>>");	
	}
}
