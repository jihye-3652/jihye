package kr.or.member;

import kr.or.member.MemberVO;

class MemberVO {
	// 필드 field(멤버변수)
	private String name;
	private int age;
	private String phoneNum;

	// getter, setter 메소드 - 다른 클래스에서도 접근할 수 있도록 접근제한자는 public
	// getName 메소드를 다른 곳에서 호출하면 이 클래스의 필드의 name변수에 저장된 값을 돌려준다.
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
}

/*class MemberService {
	// 액션-서비스 클래스 - 출력용 메서드 작성

	// 매개변수로 배열을 받아서 출력하는 형태로 작성
	public void printMembers(MemberVO[] members) {

		// 향상된 for문(Enhanced for loop) 사용
		// 배열 members에 들어있는 값을 처음부터 끝까지 차례차례 하나씩 꺼내서 선언된 변수에 m에 담아서 출력한다.
		for (MemberVO m : members) {
			System.out.println("------------");
			System.out.println(m.getName());
			System.out.println(m.getAge() + "세");
			System.out.println(m.getPhoneNum());
		}
	}
}
*/