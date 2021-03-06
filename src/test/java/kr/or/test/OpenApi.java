package kr.or.test;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class OpenApi {
// 인증키 복사 후 url 생성-> 복사 및  하단 string urlstr에 붙여넣기 및 실행. 
//실제 테스트 페이지 및 이클립스 실행 페이지가 동일한지 확인.(연동여부 확인) 
	//외부연계 메서드
	public static void serviceApi() {
		BufferedReader br = null; //HRD넷에서 전송받은 데이터를 일시저장하는 저수지와 같은 역할
		String urlstr = "http://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML&authKey=faKJdU2UMxBPQz0tEf81myesKJhy6xAq&pageNum=1&pageSize=10&srchTraStDt=20200903&srchTraEndDt=20201203&outType=1&sort=ASC&sortCol=TR_STT_DT"
				+ "&authKey=yKt63a6Wtxfq282kkIdQAZVXtSlPW5GF&pageNum=1&pageSize=10"
				+ "&authKey=인증키부분&pageNum=1&pageSize=10"
				+ "&srchTraStDt=20200622&srchTraEndDt=20200922&outType=1&sort=ASC&sortCol=TR_STT_DT";
		try {
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"euc-kr"));
			String result = "";
			String line;
			while((line=br.readLine()) != null) {
				result = result + line + "\n";
				//1부터 100까지 더하는 로직과 같음
			}
			System.out.println(result);
			//System.out.println(result);
			String result_xmlUtils = XmlUtils.formatXml(result);
			System.out.println(result_xmlUtils);

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//콘솔화면에 현재 PC시간을 표시
		Calendar cal = Calendar.getInstance();
		System.out.println(cal.getTime());
	}
	public static void main(String[] args) {
		serviceApi();
		//실행간격 지정(10초)
		int sleepSec = 10;
		//주기적인 작업을 위한 코딩 exec 실행가능한 클래스만듬
		final ScheduledThreadPoolExecutor exec = new ScheduledThreadPoolExecutor(1);
		exec.scheduleAtFixedRate(new Runnable() {
			public void run() {
				serviceApi();
			}
		}, 0, sleepSec, TimeUnit.SECONDS );

	}

}