package ex2_annotation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("dao")
	public class MemberDAO {
	
	//필드기반의 의존성 주입 방식
	@Autowired
		private MemberBean member;
		
//		public MemberDAO() {
//			// TODO Auto-generated constructor stub
//		}
//		public MemberDAO(MemberBean member) {
//			// TODO Auto-generated constructor stub
//			super();
//			this.member=member;
//		}
//
//		public void setMember(MemberBean member) {
//			this.member=member;
//			
//		}
	
		public void insert() {
			member.output();
		}
}

