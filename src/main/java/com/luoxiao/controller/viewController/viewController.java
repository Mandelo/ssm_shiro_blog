package com.luoxiao.controller.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by loshower on 2017-12-08.
 */
@Controller
public class viewController {

    @RequestMapping(value="cms/blogManage/blogManageIndex")
    public String blogManageIndex(){
        return "cms/blogManage/blogManageIndex";
    }
}
