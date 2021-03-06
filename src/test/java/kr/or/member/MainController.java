package kr.or.member;

import java.io.IOException;
import java.net.InetAddress;
/*import java.net.SocketException;*/
/*import java.net.UnknownHostException;*/

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

import org.apache.commons.net.ntp.NTPUDPClient;
import org.apache.commons.net.ntp.TimeInfo;

import kr.or.member.MemberService;
import kr.or.member.MemberVO;

public class MainController {

		private static final String TIME_SERVER = "pool.ntp.org";

		public static void main(String[] args) throws IOException {
			// TODO Auto-generated method stub
			/*System.out.println("------------------------------------");*/
			System.out.println("클래스를 사용한 사용자정의 자료형 소스");
			// MemberVO 클래스를 사용하기 위해 new연산자를 이용해 객체(instance) 생성
			MemberVO m1 = new MemberVO();
			// setter 메소드를 이용해 해당 인스턴스 변수(필드)에 값을 넣어준다.
			
			m1.setName("김지혜");
			m1.setAge(45);
			m1.setPhoneNum("000-0000-0000");
			// 마찬가지로 다른 MemberVO 객체(instance)를 생성해서 값을 넣어준다.
			MemberVO m2 = new MemberVO();
			MemberVO m3 = new MemberVO();
			
			m2.setName("지혜");
			m2.setAge(100);
			m2.setPhoneNum("111-1111-1111");

			m3.setName("김지혜2");
			m3.setAge(3);
			m3.setPhoneNum("222-2222-2222");

			// 크기가 3인 MemberVO클래스를(사용자정의자료형) 배열객체로 선언하면서, new연산자를 이용해 객체로 생성한다.
			MemberVO[] members = new MemberVO[3];
			// MemberVO배열클래스에 각각의 객체(instance) m1, m2, m3를 넣어준다.
			members[0] = m1;
			members[1] = m2;
			members[2] = m3;
			// 출력: MemberService 클래스를 사용하기 위해 new연산자를 이용해 객체(instance) 생성
			MemberService ms = new MemberService();
			ms.printMembers(members); // 매개변수로 사용자정의자료형인 MemberVO배열을 넘겨준다.
		
			// MainControl 클래스에 아래 내용 추가하 후 에러 상황 처리하기를 이용해서 외부 라이브러리 사용방법 확인 -->
			System.out.println("-서버타임 출력하기-");
			NTPUDPClient timeClient = new NTPUDPClient();
			timeClient.setDefaultTimeout(1000);
			
			/*try {
				timeClient.open();
				//throw new RuntimeException();//강제 오류예외처리
			} catch (SocketException e) {
				System.out.println("open메서드 실행오류");
				e.printStackTrace();
			} finally {
				System.out.println("이 부분은 성공/오류에 상관없이 항상 실행됩니다.");
			}*/
			
			InetAddress address = InetAddress.getByName(TIME_SERVER);
		    TimeInfo timeInfo = timeClient.getTime(address);
		    //서버로부터 시간 가져오는 코드
		    long returnTime = timeInfo.getMessage().getTransmitTimeStamp().getTime();
		    Date date = new Date(returnTime);
		    LocalDateTime localDateTime = 
		            date.toInstant()
		            .atZone(ZoneId.systemDefault())
		            .toLocalDateTime();//date to LocalDateTime
		    
		    System.out.println("Server 시간: " + localDateTime);//서버 시간!
		    System.out.println("로컬 PC 시간: " + LocalDateTime.now());
			
		}
	}

