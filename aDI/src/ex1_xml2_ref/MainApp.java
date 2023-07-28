package ex1_xml2_ref;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = new ClassPathXmlApplicationContext("ex1_xml2_ref/applicationContext.xml");
	      
	      MemberBean bean1 = context.getBean("member1",MemberBean.class);
	      bean1.output();
	      
	      MemberBean bean2 = context.getBean("member2",MemberBean.class);
	      bean2.output();
	      
	      MemberDAO dao1= context.getBean("dao1",MemberDAO.class);
	      dao1.insert();
	      
	      MemberDAO dao2= context.getBean("dao2",MemberDAO.class);
	      dao2.insert();
	}

}
