package com.luoxiao.model;

/**
 * Created by losho on 2018-09-10.
 */
public class LogModal {

    private Integer id;//日志id

    private String username;//用户名

    private String ip;//用户ip地址

    private String time;//操作时间

    private String operation;//操作

    public String getResult() {
        return result;
    }

    private String result;//执行结果

    public void setResult(String result) {
        this.result = result;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    @Override
    public String toString() {
        return "LogModal{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", ip='" + ip + '\'' +
                ", time='" + time + '\'' +
                ", operation='" + operation + '\'' +
                ", result='" + result + '\'' +
                '}';
    }
}
