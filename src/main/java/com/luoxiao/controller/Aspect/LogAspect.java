package com.luoxiao.controller.Aspect;


import com.luoxiao.model.LogModal;
import com.luoxiao.model.User;
import com.luoxiao.service.LogService;
import com.luoxiao.utils.MyUtils;
import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日志切面
 */
@Aspect
@Component
public class LogAspect {

    private static Logger logger = Logger.getLogger(LogAspect.class.getName());


    @Autowired
    private LogService logService;

    public LogAspect() {
        System.out.println("<<<<<<<<<<<<<<<----aspect works----->>>>>>>>");
    }

    //登录切点
    @Pointcut("execution(* com.luoxiao.controller.MainController.login(..))")
    public void loginPointcut() {
    }

    //登出切点
    @Pointcut("execution(* com.luoxiao.controller.MainController.logOut(..))")
    public void logOutPointcut() {

    }

    //登录 后置通知
    @After("loginPointcut()")
    public void login(JoinPoint joinPoint) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        User loginUser = (User) request.getSession().getAttribute("loginUser");
        LogModal log = new LogModal();
        String userName = loginUser.getUsername();
        log.setUsername(userName);
        String loginTime = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date());
        log.setTime(loginTime);
        String ip = MyUtils.getIpAddr(request);
        log.setIp(ip);
        String methodName = joinPoint.getSignature().getName();
        log.setOperation(methodName);

        try {
            log.setResult("执行成功");
            logService.insertLog(log);
            logger.info(log);

        } catch (Throwable e) {
            log.setResult("执行失败");
            logService.insertLog(log);
        }
    }

    //登出,环绕通知
    @Around("logOutPointcut()")
    public Object Around(ProceedingJoinPoint joinPoint) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        LogModal log = new LogModal();
        Object object = null;
        User loginUser = (User) request.getSession().getAttribute("loginUser");//等出钱得到登录用户
        String userName = loginUser.getUsername();
        log.setUsername(userName);
        logger.info("Before logOut:" + loginUser.getUsername());
        try {
            object = joinPoint.proceed();//执行logOut操作
            loginUser = (User) request.getSession().getAttribute("loginUser");
            if (null == loginUser) {//登出成功
                logger.info("------------------logOut success-------------");
                String loginTime = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date());
                log.setTime(loginTime);
                String ip = MyUtils.getIpAddr(request);
                log.setIp(ip);
                String methodName = joinPoint.getSignature().getName();
                log.setOperation(methodName);
                log.setResult("执行成功");
                logService.insertLog(log);//插入数据库
                logger.info(log);
            }
        } catch (Throwable throwable) {
            log.setResult("执行失败");
            logService.insertLog(log);
            logger.info(log);
        }
        return object;
    }


}
