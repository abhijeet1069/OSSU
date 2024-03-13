package ch1_strategyPattern.animal;

public class Cat implements Animal{

	@Override
	public void makeSound() {
		meow();
	}
	
	private void meow() {
		System.out.println("Meow!!");
	}

}
