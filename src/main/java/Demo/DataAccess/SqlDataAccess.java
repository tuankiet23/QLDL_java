package Demo.DataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class SqlDataAccess {
    private final String url;
    private final String user;
    private final String password;
    private final String serverName;
    private final String databaseName;

    private Connection connection;
    private PreparedStatement ps;

    public SqlDataAccess() {
        serverName = "DESKTOP-KJNF2QE\\SQLEXPRESS";
        databaseName = "DB_TourManager";
        url = "jdbc:sqlserver://" + serverName + ";databaseName=" + databaseName;
        user = "sa";
        password = "phamtuankiet";
    }

    public Connection getConnection() {
        if (connection != null)
            return connection;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("Sql connected 11111111111111111111111111111");
        } catch (Exception exception) {
            System.out.println("slq error message:");
            exception.printStackTrace();
            System.out.println("sql connect failed");
        }
        return connection;
    }

    public void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
                ps.close();
            } catch (Exception exception) {
                exception.printStackTrace();
            } finally {
                connection = null;
                ps = null;
            }
        }
    }

    public ResultSet getTable(String query, List<String> parameters) {
        ResultSet resultSet = null;
        try {
            ps = getConnection().prepareStatement(query);
            for (int i = 0; i < parameters.size(); i++) {
                ps.setString(i + 1, parameters.get(i));
            }
            resultSet = ps.executeQuery();
        } catch (Exception ex) {
            System.out.println("get table error:");
            ex.printStackTrace();
        }
        parameters.clear();
        return resultSet;
    }

    public boolean executeNonQuery(String query, List<String> parameters) {
        boolean result = false;
        try {
            ps = getConnection().prepareStatement(query);
            for (int i = 0; i < parameters.size(); i++) {
                ps.setString(i + 1, parameters.get(i));
            }
            result = ps.executeUpdate() == 0 ? false : true;
        } catch (Exception ex) {
            System.out.println("get table error");
            ex.printStackTrace();

        }
        parameters.clear();
        return result;

    }
}

