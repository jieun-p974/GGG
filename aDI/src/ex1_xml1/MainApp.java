package ex1_xml1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//0.기존 자바 방식(POJO 방식)
//MessageBeanKoImpl bean= new MessageBeanKoImpl();
//bean.sayHello("홍동우");

//MessageBeanEnImpl bean= new MessageBeanEnImpl();
//bean.sayHello("홍동우");

		//1.스프링의 설정파일 연결
		ApplicationContext context = new ClassPathXmlApplicationContext("ex1_xml1/applicationContext.xml");
	
		//2.DI : 스프링 컨테이너에서 빈 가져오기(아이디 ko대신 별칭-a,b,c가능) 장점-간단,결합도 낮춤
		MessageBean bean = context.getBean("a",MessageBean.class);
		bean.sayHello("홍동우");
		
		MessageBean bean1 = context.getBean("en",MessageBean.class);
		bean1.sayHello("홍동우");
		
		MessageBean bean2 = context.getBean("en",MessageBean.class);
		MessageBean bean3 = context.getBean("ko",MessageBean.class);
	
	}

}
