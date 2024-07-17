package com.satyam.linearStructures.list;

import java.util.NoSuchElementException;

/**
 * Implement list using arrays.
 * */
public class ArrList<E> implements List<E>{

	private Object[] arr;
	private int currIndex;
	private int currSize;
	private int maxSize;
	private final int defaultSize = 10;
	
	ArrList(){
		this.arr = new Object[defaultSize];
		this.currIndex = 0;
		this.currSize = 0;
		this.maxSize = defaultSize;
	}
	
	ArrList(int size){
		this.maxSize = size;
		this.arr = new Object[this.maxSize];
		this.currIndex = 0;
		this.currSize = 0;
	}
	
	@Override
	public void clear() {
		this.currIndex = 0;
		this.currSize = 0;
	}

	@Override
	public boolean insert(E it) {
		boolean isInserted = false;
		if(currSize < maxSize) {
			for(int i = currSize; i > currIndex; i--)
				arr[i] = arr[i-1];
			arr[currIndex] = it;
			currSize++;
			isInserted = true;
		}
		else {
			System.out.println("Insertion unsuccessful. List full!");
		}
		return isInserted;
	}

	@Override
	public boolean append(E it) {
		boolean isAppended = false;
		if(currSize < maxSize) {
			arr[currSize++] = it;
			isAppended = true;
		}
		
		return isAppended;
	}

	@Override
	public E remove() throws NoSuchElementException {
		Object result = null;
		if(currIndex < 0 || currIndex >= maxSize)
			throw new NoSuchElementException(" currIndex "+currIndex+" maxSize = "+maxSize);
		else {
			result = arr[currIndex];
			for(int i = currIndex; i < maxSize; i++) {
				arr[i] = arr[i+1];
			}
			currSize--;
		}
		return (E)result;
	}

	@Override
	public void moveToStart() {
		currIndex = 0;
		
	}

	@Override
	public void moveToEnd() {
		currIndex = currSize;
		
	}

	@Override
	public void prev() {
		if(currIndex > 0)
			currIndex--;
	}

	@Override
	public void next() {
		if(currIndex < currSize) {
			currIndex++;
		}
		
	}

	@Override
	public int length() {
		return currSize;
	}

	@Override
	public int currPos() {
		return currIndex;
	}

	@Override
	public boolean moveToPos(int pos) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAtEnd() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public E getValue() throws NoSuchElementException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isEmpty() {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
