package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.TimeZone;

@Controller
@RequestMapping("/thang")
public class TimeController {
@GetMapping
    private String moveToWelcome(){
    return "index";
}
@PostMapping
    private ModelAndView getTimeByTimeZone(String city){
    String city_in = city;
    Date date = new Date();
    TimeZone local = TimeZone.getDefault();
    TimeZone locate = TimeZone.getTimeZone(city_in);
    long locate_time = date.getTime()+(locate.getRawOffset()-local.getRawOffset());
    date.setTime(locate_time);
    ModelAndView modelAndView = new ModelAndView("index");
    modelAndView.addObject("city",city);
    modelAndView.addObject("date",date);
    return modelAndView;
}
}
