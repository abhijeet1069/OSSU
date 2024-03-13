package ch1_strategyPattern.animal;

public class Main {

	public static void main(String[] args) {
		
		//dog.bark() avoided.
		Dog dog = new Dog();
		dog.makeSound();
		
		//cat.meow() avoided.
		Animal cat = new Cat();
		cat.makeSound();
		
		//I don't need to remember 2 new extra functions bark() and meow();
	}
}
