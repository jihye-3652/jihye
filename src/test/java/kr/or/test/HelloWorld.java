package kr.or.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Tire {
	public void run() {//메서드 = 함수 =function()
		System.out.println("일반 타이어가 굴러갑니다.");
	}
}
class SnowTire extends Tire {//상속=extends=>부모
	public void run() {
		System.out.println("스노우 타이어가 굴러갑니다.");
	}
}

public class HelloWorld {

	public static void main(String[] args) {
		List<String> files =new ArrayList<>();
		files.add("sample1.jpg");
		files.add("sample2.jpg");
		files.add("sample3.jpg");
		String[] filenames = new String[files.size()];
		int cnt = 0;
		for(String fileName : files) {
			filenames[cnt++] = fileName;
		}
		System.out.println(filenames[0] + filenames[1] + filenames[2]);
		//SnowTire클래스형 변수 snowTire 생성
		//new 키워드로 SnowTire() 매서드를 이용해서 snowTire인스턴스클래스 (메모리공간할당) 실행된상태.(아래)
		SnowTire snowTire = new SnowTire();
		Tire tire = snowTire;
		tire.run();//자식클래스의 run()
		Tire tire2 = new Tire();
		tire2.run();//부모 클래스의 run()
		/*boolean run = true;
		int balance = 0;
		Scanner scanner = new Scanner(System.in); //입출력 정의-키보드 입력 (System.in)
		while(run) {
			System.out.println("1.입금|2.출금|3.잔고|4.종료");//"ln-new line"
			System.out.print("위 번호를 입력해 주세요");
			int menuNum = scanner.nextInt();//키보드로 입력받은 숫자를 
			if(menuNum==1) {
				System.out.print("입금액을 입력 하세요> ");
				balance = balance + scanner.nextInt();//입금액 키보드 입력
			}
			if(menuNum==2) {
				System.out.print("출금액을 입력 하세요> ");
				balance = balance - scanner.nextInt();//출금 후 남은 금액이 입력됨 	
			}
			if(menuNum==3) {
				System.out.println("잔액은 " + balance + "원 입니다."); 	
			}
			if(menuNum==3) {
				System.out.print("프로그램을 종료되었습니다."); 	
				run = false;
				//break//파일문을 빠져나가는 명령
			}
	
			switch(menuNum) {
			case 1:
				System.out.print("입금액을 입력 하세요> ");
				balance = balance + scanner.nextInt();
				break;
			case 2:
				System.out.print("출금액을 입력 하세요> ");
				balance = balance - scanner.nextInt();
				break;
			case 3:
				System.out.print("잔고는 다음과 같습니다.>");
				System.out.println(balance + " 원 입니다.");
				break;
			case 4:
				System.out.print("프로그램이 종료되었습니다.");
				run = false;//while문을 빠져나가는 명령
				break;//switch문을 빠져나가는 명령 
			}//end switch
		}//end while*/	
		
		/*
		 * int sum = 0; int cut=1;
		for(cnt=1;cut<500;cnt++) {//[cnt=cnt+1]=cnt++
		 	sum = sum + cnt;//sum은 누적변수, cnt는 증가변수
		}
		int cnt = 1;
		while(cnt<=100) {
			sum = sum + cnt;
			cnt = cnt+1;
		}
		System.out.println("1부터 100까지의 합은: " + sum + " 입니다.");*/
		
		/*int y = 5;
		boolean result1 = (x>7)&&(y<=5);
		boolean result2 = (x<7)&&(y<=5);
		boolean result3 = (x<7)||(y<=5);
		System.out.println();*/

	
		/*System.out.println((x>7)&&(y<=5));//true
		System.out.println((x<7)&&(y<=5));//false
		System.out.println((x<7)||(y<=5));//true*/
		
		/*int score = 85;
		String result;
		// result = (!(score>90))?"가":"나"; //삼항조건 축약문 -?-:- !는 조건값 반대
		if(!(score>90)) {
			result = "가";
		}else {
			result ="나";
		}
		System.out.println("조건에 맞는 답은 " + result + "입니다.");*/
		
		/*String name = "123";//문자열
		char var3 ='a';//단일문자형
		int num_name = Integer.parseInt(name);
		System.out.println(num_name + "님 안녕하세요. 자바!");
		*/
}
}