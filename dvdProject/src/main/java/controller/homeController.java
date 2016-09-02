package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by heeseoknoh on 9/2/16.
 */
@Controller
public class homeController {

    @RequestMapping("home.do")
    public String home()
    {
        return "/home";
    }
}
