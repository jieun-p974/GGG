package ex9_xxxxxlifecycle;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {

	public static void main(String[] args) {
		
		//---------------------------------
		// [ 목표 ] sayHello() 호출

		// 스프링의 설정파일을 연결
		//ApplicationContext context = new ClassPathXmlApplicationContext("ex9_lifecycle/applicationContext.xml");
		AbstractApplicationContext context = new 
				ClassPathXmlApplicationContext("ex9_lifecycle/applicationContext.xml");

		MessageBean bean = context.getBean("bean", MessageBean.class);
		bean.sayHello();
		
		// destoy()메소드는 ApplicationContext의 부모인 AbstractApplicationContext 에 속한 메소드
		context.destroy();

	}

}
