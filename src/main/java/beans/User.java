package beans;

import java.util.List;
import java.util.Map;

public class User {
    private String userId;
    private String userEmail;
    private String userPassword;
    private String userName;
    private DatabaseUtil db;


    public User() {
        db = new DatabaseUtil();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserId() {
        return userId;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String email) {
        this.userEmail = email;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String password) {
        this.userPassword = password;
    }


    // 获取所有用户信息
    public List getAllUsers() {
        String sql = "select * from DominicBookStore.user";
        return db.getList(sql, null);
    }

    // 添加用户
    public int addUser() {
        String sql = "insert into DominicBookStore.user values(null,?,?,?)";
        String[] params = {userEmail, userName, userPassword};
        return db.update(sql, params);
    }

    public Map getUser() {
        String sql = "select * from DominicBookStore.user where userEmail=?";
        String[] params = {userEmail};
        return db.getMap(sql, params);
    }

    public int updateUsers() {
        String sql = "update DominicBookStore.user set email=? , password=? where userid=?";
        String[] params = {userEmail, userPassword, userId};
        return db.update(sql, params);
    }

    public int dltUser() {
        String sql = "delete from DominicBookStore.user where email=?";
        String[] params = {userEmail};
        return db.update(sql, params);
    }

}
