package kr.or.test;

public class Step1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*System.out.println("------------------------------------");
		System.out.println("클래스를 사용하지 않는 내장변수 자료형 소스");
		// 필드=field(변수)=배열변수*/
		System.out.println("내장변수 자료형 소스");
		//필드=변수표기//카멜-camel-낙타등표기법
		String name;
		int age;
		String phoneNum;
		name = "홍길동";
		age = 45;
		phoneNum = "000-0000-0000";
		printMember(name, age, phoneNum);
		//매서드의 매개변수-인자-파라미터 로 값 전달
		
		name = "성춘향";
		age = 100;
		phoneNum = "111-1111-1111";
		printMember(name, age, phoneNum);
		//매서드의 매개변수-인자-파라미터 로 값 전달
		
		name = "각시탈";
		age = 3;
		phoneNum = "222-2222-2222";
		printMember(name, age, phoneNum);
		//매서드의 매개변수-인자-파라미터 로 값 전달
		
	/*	System.out.println("------------------------------");
		System.out.println("클래스를 사용하지 않는 내장배열 자료형 소스");
		// 필드=field(변수)=배열변수
		String[] names = {"홍길동","성춘향","각시탈"};
		int[] ages = {45,100,3};
		String[] phoneNums = null;
		phoneNums = new String[] {"000-0000-0000","111-1111-1111","222-2222-2222"};
		printMember(names, ages, phoneNums);
		System.out.println("------------------------------------");*/
		
		System.out.println("------------------------------");
		System.out.println("클래스를 사용하지 않는 내장변수 배열자료형 소스");
		// 필드=field(변수)=배열변수
		String[] names = {"홍길동","성춘향","각시탈"};
		System.out.println("현재 등록된 회원은" + names.length + "명 입니다.");
		int[] ages = {45,100,3};
		String[] phoneNums = {"000-0000-0000","111-1111-1111","222-2222-2222"};
		printMember(names, ages, phoneNums);
		
	}
	
	// 매개변수를 받아서 출력하는 형태로 작성
	public static void printMember(String name, int age, String phoneNum) {
		System.out.println("이름은" + name + "입니다.");
		System.out.println("나이는"+age+ "살 입니다.");
		System.out.println("전화번호는" + phoneNum+ "입니다.");
	}
	// 매개변수로 배열을 받아서 출력하는 형태로 작성 
	// 같은 이름의 매서드 인데 파라미터(매개변수)가 틀리게 만든 매서드  - 오버로드
	public static void printMember(String[] names, int[] ages, String[] phoneNums) {
		int cntLength = names.length;
		System.out.println("매개변수 이름의 갯수는" + cntLength );
		//배열을 참조할때 주소-index를 사용하는데 0번 주소부
		for(int cnt=0;cnt<cntLength;cnt++) {
			System.out.println("이름은" + names[cnt] + "님 입니다.");
		}
			/*System.out.println("번째참조한 나이는"+ ages[cnt] + "살 입니다.");
			System.out.println("번째참조한 전화번호는"+ phoneNums[cnt] + "입니다.");*/
	
	
	
	/* public static void printMember(String[] names, int[] ages, String[] phoneNums) {
		for(int cnt=0;cnt<3;cnt++) {
			System.out.println(cnt + "번째참조한 이름은" + names[cnt] + "님 입니다.");
			System.out.println("번째참조한 나이는"+ ages[cnt] + "살 입니다.");
			System.out.println("번째참조한 전화번호는"+ phoneNums[cnt] + "입니다.");
		}*/
		
		/*for (int i=0; i<3; i++) {	
		System.out.println("------------");
			System.out.println(names[i]);
			System.out.println(ages[i] + "세");
			System.out.println(phoneNums[i]);
		}*/
	}

}