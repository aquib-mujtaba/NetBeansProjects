package com.erevmax.empmng.domain;
public class Login 
{
    private String userName;
    private String password;
    private String userType;
    private String loginStatus;

    public Login() {
    }

    public Login(String userName, String password, String userType, String loginStatus) 
    {
        this.userName = userName;
        this.password = password;
        this.userType = userType;
        this.loginStatus = loginStatus;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }
    
    
    
}
