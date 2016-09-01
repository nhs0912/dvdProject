package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class dvdViewController {

	@RequestMapping("/dvdView.do")
	public String dvdView()
	{
		System.out.println("작동");
		return "/dvdView";
	}
}
