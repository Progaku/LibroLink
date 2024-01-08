package net.codejava.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class controller {
	
    @GetMapping("/")
    public String hello(Model model) {
        return "hello";
    }

}
