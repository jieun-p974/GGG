package ex1_xml1;

public class MessageBeanEnImpl implements MessageBean{

		public void sayHello(String name){
			System.out.println(name+", Good morning!!!!");
		}
		
		public MessageBeanEnImpl(){
			System.out.println("EN 생성자 함수");
		}		
}
