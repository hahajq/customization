package com.customization.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by jq on 2017/10/5.
 */
@Controller
public class IndexController {
    @RequestMapping(path = {"/","/index"})

    public String index(Model model){
        return "index";
    }

    @RequestMapping(path = {"/T01"})
    public String t01(Model model){
        return "T01";
    }
    @RequestMapping(path = {"/T02"})
    public String t02(Model model){
        return "T02";
    }
    @RequestMapping(path = {"/T03"})
    public String t03(Model model){
        return "T03";
    }
    @RequestMapping(path = {"/404"})
    public String t404(Model model){
        return "404";
    }
}
