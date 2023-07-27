package ex9_xxxxxlifecycle;

import java.util.concurrent.SynchronousQueue;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;

public class BeanPostProcessorImpl implements BeanPostProcessor{

	@Override
	public Object postProcessBeforeInitialization(Object arg0, String arg1) throws BeansException {
		System.out.println("5. 사전초기화 작업");
		return arg0;
	}
	@Override
	public Object postProcessAfterInitialization(Object arg0, String arg1) throws BeansException {
		System.out.println("8. 사후초기화 작업");
		return arg0;
	}



}
