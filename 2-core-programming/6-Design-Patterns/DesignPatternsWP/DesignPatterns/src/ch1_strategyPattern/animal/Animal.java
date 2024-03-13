package ch1_strategyPattern.animal;

//Interface forms a good wrapper, I just need to know makeSound(), I don't care how its implemented.
public interface Animal {
	public void makeSound();
}
