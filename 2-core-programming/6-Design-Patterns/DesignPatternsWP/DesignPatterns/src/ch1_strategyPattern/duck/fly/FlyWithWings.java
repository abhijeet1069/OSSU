package ch1_strategyPattern.duck.fly;

public class FlyWithWings implements FlyBehavior{

	@Override
	public void fly() {
		System.out.println("I am flying with wings!!");
		
	}
}
