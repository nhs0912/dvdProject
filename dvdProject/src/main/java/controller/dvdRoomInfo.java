package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by heeseoknoh on 9/2/16.
 */
@Controller
public class dvdRoomInfo {
    @RequestMapping("/dvdRoomInfo.do")
    public String dvdRoomInfo(){
        return "/dvdRoomInfo";
    }
}
