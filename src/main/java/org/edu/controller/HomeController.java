package org.edu.controller;

import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.edu.service.IF_MemberService;
import org.edu.vo.MemberVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private IF_MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * 스프링 시큐리티 spring security-context.xml에서 설정한 로그인 처리결과 화면
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	
	@RequestMapping(value = "/login_success", method = RequestMethod.GET)
	   public String login_success(Locale locale,HttpServletRequest request, RedirectAttributes rdat) throws Exception {
	      logger.info("Welcome login_success! The client locale is {}.", locale);
	      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      
	      String userid = "";//anonymousId
	      String levels = "";//ROLE_ANONYMOUS
	      Boolean enabled = false;
	      Object principal = authentication.getPrincipal();
	      if (principal instanceof UserDetails) {
	         enabled = ((UserDetails)principal).isEnabled();
	      }
	      HttpSession session = request.getSession();//세션초기화
	      if (enabled) {//권한체크
	         Collection<? extends GrantedAuthority>  authorities = authentication.getAuthorities();
	         if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_ANONYMOUS")).findAny().isPresent())
	         {levels = "ROLE_ANONYMOUS";}
	         if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_USER,")).findAny().isPresent())
	         {levels = "ROLE_USER,";}
	         if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_ADMIN")).findAny().isPresent())
	         {levels = "ROLE_ADMIN";}
	         userid =((UserDetails)principal).getUsername();
	        
	         //로그인 세션 저장
	         session.setAttribute("session_enabled", enabled);//인증확인
	         session.setAttribute("session_userid", userid);//사용자이름
	         session.setAttribute("session_levels", levels);//사용자권한
	         
	         //=========상단은 스프링시큐리티에서 기본제공하는 세션 변수처리 입니다.
	         //=========하단은 우리가 추가한 세션 변수처리 입니다.
	         //회원이름 구하기 추가
	         String username = "";//anonymousUser
	         MemberVO memberVO = memberService.viewMember(userid);
	         session.setAttribute("session_username", memberVO.getUser_name());//사용자명
	      }
	      rdat.addFlashAttribute("msg", "로그인");//result 데이터를 숨겨서 전송
	      return "redirect:/";//새로고침 자동 등록 방지를 위해서 아래처럼 처리
	   }
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/sample/HTMLTEST", method = RequestMethod.GET)
	public String HTMLTEST(Locale locale, Model model) {

		return "sample/HTMLTEST";
	}
	/**
	 * 샘플 파일 홈 
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public String sample(Locale locale, Model model) {

		return "sample/HOME";
	}

	@RequestMapping(value = "/sample/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {

		return "sample/test";
	}

	@RequestMapping(value = "/sample/BLOG", method = RequestMethod.GET)
	public String BLOG(Locale locale, Model model) {

		return "sample/BLOG";
	}
	@RequestMapping(value = "/sample/WEARE", method = RequestMethod.GET)
	public String WEARE(Locale locale, Model model) {

		return "sample/WEARE";
	}
	@RequestMapping(value = "/sample/WORK", method = RequestMethod.GET)
	public String WORK(Locale locale, Model model) {

		return "sample/WORK";
	}
	@RequestMapping(value = "/sample/CONTACTUS", method = RequestMethod.GET)
	public String CONTACTUS(Locale locale, Model model) {

		return "sample/CONTACTUS";
	}
	@RequestMapping(value = "/sample/test2", method = RequestMethod.GET)
	public String test2(Locale locale, Model model) {

		return "sample/test2";
	}
	/*slide page*/
	@RequestMapping(value = "/sample/slide", method = RequestMethod.GET)
	public String slide(Locale locale, Model model) {

		return "sample/slide";
	}
	@RequestMapping(value = "/sample/hh", method = RequestMethod.GET)
	public String hh(Locale locale, Model model) {

		return "sample/hh";
	}
	
	/*login page*/
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		return "login";
	}
	
	/*logout page*/
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model) {

		return "logout";
	}
}