package com.example.buysell.controllers;

import com.example.buysell.models.User;
import com.example.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }


    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с email:" + user.getEmail()+ "уже существует");


        }
        userService.createUser(user);
        return "redirect:/";    //убрал login
    }

    @GetMapping("/hello")
    public String securityUrl() {
        return "hello";
    }
    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("products", user.getProducts());
        return "user-info";
    }
    @GetMapping("/profile")
    public String showProfile(Principal principal, Model model) {
        String email = principal.getName(); // Получение email текущего пользователя
        User user = userService.getUserByEmail(email);
        model.addAttribute("user", user);
        return "profile"; // Переход на страницу user/profile.ftl или .html
    }
}
