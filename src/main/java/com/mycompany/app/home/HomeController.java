package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value={"/"})
	public String home() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "home";	
	}
	
	@RequestMapping(value={"/home2"})
	public String home2() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/home/home2";	
	}
	
	@RequestMapping(value={"/home3"})
	public String home3() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/tr/home3";	
	}
	
	@RequestMapping(value={"/home4"})
	public String home4() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/home2/home4";	
	}
	@RequestMapping(value={"/home5"})
	public String home5() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/tr2/home5";	
	}
	@RequestMapping(value={"/home6"})
	public String home6() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/home/home3/home6";	
	}
	@RequestMapping(value={"/home7"})
	public String home7() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/tr3/home7";	
	}
	@RequestMapping(value={"/home8"})
	public String home8() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/tr4/home08";	
	}
	@RequestMapping(value={"/home9"})
	public String home9() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/home2/home09";	
	}
	@RequestMapping(value={"/home10"})
	public String home10() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/tr4/home10";	
	}
	
}