package ex4_javabased;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("ex4_javabased")

public class AppConfig {
	@Bean
	MemberBean memberBean() {
		return new MemberBean("장아영", 27, "잠깨자");
	}

	@Bean
	MemberDAO memberDAO() {
		return new MemberDAO(memberBean());
	}

}
