package com.demo.test;

public class Test {
public static void main(String[] args) {
	String image="2018_2_1_2468bd24b83f4c798c4ec3f41a830ba2.jpg";
	String path="";
	path += image.replace("_", "/");
	
	System.out.println(path);
}
}
