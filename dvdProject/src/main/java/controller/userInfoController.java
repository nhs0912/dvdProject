package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 회원 정보 페이지 컨트롤러
 * Created by heeseoknoh on 9/2/16.
 */
@Controller
public class userInfoController {


    @RequestMapping("/userInfo.do")
    public String userInfo()
    {
       // System.out.println("userInfoController 작동");
        return "/userInfo";
    }
}
