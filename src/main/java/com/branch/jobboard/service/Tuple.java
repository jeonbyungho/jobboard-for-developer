package com.branch.jobboard.service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@Getter @AllArgsConstructor @ToString
public class Tuple<X,Y>{
	private X x;
	private Y y;
}
