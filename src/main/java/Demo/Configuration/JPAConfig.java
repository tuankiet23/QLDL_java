package Demo.Configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
public class JPAConfig {
    @Bean
    public DataSource dataSource() {
        String serverName = "DESKTOP-KJNF2QE\\SQLEXPRESS";
        String databaseName = "DB_TourManager";

        String url = "jdbc:sqlserver://" + serverName + ";databaseName=" + databaseName;

        String user = "sa";
        String password = "phamtuankiet";

        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        dataSource.setUrl(url);
        dataSource.setUsername(user);
        dataSource.setPassword(password);
        return dataSource;

    }
}
