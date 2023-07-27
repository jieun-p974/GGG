package ex1_xml5_collections;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = new ClassPathXmlApplicationContext("ex1_xml5_collections/applicationContext.xml");

		MemberDAO dao= context.getBean("daodao", MemberDAO.class);
		dao.insert();
	}

}
