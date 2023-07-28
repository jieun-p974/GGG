package ex9_xxxxxlifecycle;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class MessageBeanImpl implements MessageBean,
	BeanNameAware, BeanFactoryAware, InitializingBean, DisposableBean{

	
	public MessageBeanImpl() {
		System.out.println("1. 생성자 - 인스턴스화 될 때 ");
	}
	
	private String greeting;
	public void setGreeting(String g){
		greeting = g;
		System.out.println("2. 프라퍼티 지정");
	}
	

	@Override
	public void setBeanName(String arg0) {
		System.out.println("3. 빈의 이름 설정  : " + arg0);		
	}
	

	@Override
	public void setBeanFactory(BeanFactory arg0) throws BeansException {
		System.out.println("4. Bean Factory에 설정 : " + arg0 );
	}	

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("6. Initializing Bean 의  프라퍼티 설정 ");
	}

	public void init(){
		System.out.println("7. 초기화를 담당하는 메소드 ");
	}
	@Override
	public void sayHello() {
		System.out.println("9. 빈의 메소드 사용 : " + greeting);
	}


	@Override
	public void destroy() throws Exception {
		System.out.println("10. 종료");		
	}





}
