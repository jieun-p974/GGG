package ex1_xml5_collections;

public class MemberDAO {
	private MemberBean member;
	
	public MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	public MemberDAO(MemberBean member) {
		// TODO Auto-generated constructor stub
		super();
		this.member=member;
	}

	public void setMember(MemberBean member) {
		this.member=member;
		
	}
	public void insert() {
		member.output();
	}
}
