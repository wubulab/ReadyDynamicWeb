package ua.readydynamicweb;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DatabaseFacade{


    public static List<String> getBooks() {

        List<String> result = new ArrayList<String>();

        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
                "postgres", "1234")) {

            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("SELECT * FROM books.books");

            while (resultSet.next()) {
                result.add(resultSet.getString("name"));
            }
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
        }

        return result;
    }

    public static void removeBook(int bookId) {

        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
                "postgres", "1234")) {

            try (PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from books.books where id = ?")) {

                preparedStatement.setInt(1, bookId);

                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
        }

    }


    public static void addBook(int bookId, String bookName) {

        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
                "postgres", "1234")) {

            try (PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into books.books values(?,?)")) {

                preparedStatement.setInt(1, bookId);

                preparedStatement.setString(2, bookName);

                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
        }

    }
}