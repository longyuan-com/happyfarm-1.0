package com.itheima.dubbo.service.impl;

import com.alibaba.dubbo.config.annotation.Service;

@Service
public class HelloService implements com.itheima.dubbo.service.HelloService {

	@Override
	public String sayHello(String name) {
		
		return "Hello"+name;
	}

}
