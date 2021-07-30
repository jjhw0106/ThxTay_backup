package com.tt.exception;

public class DuplicatedIdAndEmailException extends RuntimeException {

	private static final long serialVersionUID = -7175557813196054572L;

	public DuplicatedIdAndEmailException(String message) {
		super(message);
	}
}
