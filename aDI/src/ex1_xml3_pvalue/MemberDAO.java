package ex1_xml3_pvalue;

public class MemberDAO {
		private MemberBean member;
		
		public MemberDAO() {
			// TODO Auto-generated constructor stub
		
		}
		public MemberDAO(MemberBean member) {
			this.member=member;
		}
		public MemberBean getMember() {
			return member;
		}
		public void setMember(MemberBean member) {
			this.member = member;
		}
		public void insert() {
			member.output();
			System.out.println("디비 입력!");
		}
}
