package beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DatabaseUtil {
    private String driver, url, username, password;
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public DatabaseUtil() {
        driver = "com.mysql.cj.jdbc.Driver";
        url = "jdbc:mysql://localhost:3306/book";
        username = "root";
        password = "Wzm5503752wzm";
    }

    // 获取连接对象
    private Connection getConnection() {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    // 获取语句对象
    private PreparedStatement getPrepareStatement(String sql) {
        try {
            pstmt = getConnection().prepareStatement(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pstmt;
    }

    // 给pstmt的SQL语句设置参数
    private void setParams(String sql, String[] params) {
        pstmt = this.getPrepareStatement(sql);
        if (params != null)
            for (int i = 0; i < params.length; i++)
                try {
                    pstmt.setString(i + 1, params[i]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
    }

    // 执行数据库查询操作室，将返回的结果封装到List对象中
    public List getList(String sql, String[] params) {
        List list = new ArrayList();
        try {
            this.setParams(sql, params);
            ResultSet rs = pstmt.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();
            while (rs.next()) {
                Map m = new HashMap();
                for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                    String colName = rsmd.getColumnName(i);
                    m.put(colName, rs.getString(colName));
                }
                list.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;
    }

    // 执行数据库查询操作时，将返回的结果封装到List对象中
    public Map getMap(String sql, String[] params) {
        List list = getList(sql, params);
        if (list.isEmpty())
            return null;
        else
            return (Map) list.get(0);
    }

    // 更新数据库是调用update方法
    public int update(String sql, String[] params) {
        int recNo = 0; // 受影响记录个数
        try {
            setParams(sql, params);
            recNo = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return recNo;
    }

    private void close() {
        try {
            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (con != null)
                con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}