package com.itu.exportation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Home")
public class HomeController {

    @GetMapping("")
    public String showLoginPage() {
        return "NewHome";
    }
}
