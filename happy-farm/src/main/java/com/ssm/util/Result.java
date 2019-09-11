package com.ssm.util;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class Result {
	 private boolean success;
	 private String msg;

	public Result(boolean success, String msg) {
        super();
        this.success = success;
        this.msg = msg;
    }
}
