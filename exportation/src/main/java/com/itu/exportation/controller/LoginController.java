package com.itu.exportation.controller;

import com.itu.exportation.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/Login")
public class LoginController {

    @GetMapping("")
    public String showLoginPage() {
        return "Login";
    }

    @PostMapping("/validate_login")
    public String login(@RequestParam("name") String username,
                        @RequestParam("password") String password,
                        Model model, HttpSession session) {
    
        User user = User.findByNameAndPassword(username, password);
    
        if (user != null) {
            session.setAttribute("user", user);
            return "redirect:/Home";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "Login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
