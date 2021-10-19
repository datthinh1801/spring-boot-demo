package nl.amis.smeetsm.demoservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoRestController {
    @GetMapping("/rest/demo")
    //Returning is List is supported with JSON response only
    //If you want XML, then add a wrapper class as Root XML element, for example EmployeeList
    public String demoReply() {
        return "rest demo";
    }

    @GetMapping("/")
    public String index() {
        return "This is the home page";
    }
    
    @GetMapping("/test")
    public String index() {
        return "This is the home page";
    }
}
