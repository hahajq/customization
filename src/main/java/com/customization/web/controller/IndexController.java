package com.customization.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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

}
