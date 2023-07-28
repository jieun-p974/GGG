package ex1_xml5_collections;

import java.util.Set;

public class MemberBean {
private Set<String> setInfo;

public void setSetInfo(Set<String> setInfo) {
	this.setInfo=setInfo;
}
public void output() {
	for(String a : setInfo) {
		System.out.println(a);
	}
}
}
