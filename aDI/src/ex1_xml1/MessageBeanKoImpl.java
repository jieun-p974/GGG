
package ex1_xml1;

public class MessageBeanKoImpl implements MessageBean {
	
	public void sayHello(String name){
		System.out.println(name + "님 반갑습니다.");
	}
	
	public MessageBeanKoImpl(){
		System.out.println("KO 생성자 함수");
	}
}
