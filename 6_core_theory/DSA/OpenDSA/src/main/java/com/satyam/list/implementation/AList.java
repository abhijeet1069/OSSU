package com.satyam.list.implementation;

import com.satyam.list.adt.ListADT;

import java.util.NoSuchElementException;

public class AList implements ListADT {
    @Override
    public void clear() {

    }

    @Override
    public boolean insert(Object it) {
        return false;
    }

    @Override
    public boolean append(Object it) {
        return false;
    }

    @Override
    public Object remove() throws NoSuchElementException {
        return null;
    }

    @Override
    public void moveToStart() {

    }

    @Override
    public void moveToEnd() {

    }

    @Override
    public void prev() {

    }

    @Override
    public void next() {

    }

    @Override
    public int length() {
        return 0;
    }

    @Override
    public int currPos() {
        return 0;
    }

    @Override
    public boolean moveToPos(int pos) {
        return false;
    }

    @Override
    public boolean isAtEnd() {
        return false;
    }

    @Override
    public Object getValue() throws NoSuchElementException {
        return null;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }
}
