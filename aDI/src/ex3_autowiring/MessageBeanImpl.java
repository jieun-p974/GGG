package ex3_autowiring;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;

public class MessageBeanImpl implements MessageBean{

//  @Autowired // setter나 생성자 인자 없이도 DI 가능
//  @Qualifier("outputer2")  // @Autowired 와 같이 기술
//  @Resource(name="outputer2") 이름변경하고 싶을때 사용
	
	private String name;
	private String message;
	
	
	@Required//5.1이후부턴 안됨
	public void setName(String name) {
		this.name = name;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Autowired
	@Qualifier("outputer2")
	private Outputer out;
	
	public void sayHello() {
		System.out.println(name + " 님께 "+ message);
		
	try {
		out.writeMessage(name + " 님께 "+ message);
	} catch (IOException e) {
		// TODO: handle exception
	}
	
	}
	
	
}
