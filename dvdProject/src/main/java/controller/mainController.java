package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by heeseoknoh on 9/2/16.
 */
@Controller
public class mainController {

    @RequestMapping("/main.do")
    public String Main(){

        return "/main";
    }
}
