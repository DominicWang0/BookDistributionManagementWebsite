package beans;

import jdk.nashorn.internal.runtime.regexp.joni.exception.SyntaxException;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class Book {
    private int bookId;
    private String bookName, bookAuthor, bookISBN, bookPrice;
    private DatabaseUtil db;

    public Book() {
        db = new DatabaseUtil();
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public int getBookId() {
        return bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookISBN() {
        return bookISBN;
    }

    public void setBookISBN(String bookISBN) {
        this.bookISBN = bookISBN;
    }

    public String getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(String bookPrice) {
        this.bookPrice = bookPrice;
    }

    // 获取全部书
    public List getAllBooks() {
        String sql = "SELECT * FROM DominicBookStore.books";
        return db.getList(sql, null);
    }

    public Map getBook() {
        String sql = "SELECT * FROM DominicBookStore.books WHERE bookId = ?";
        String[] params = {String.valueOf(bookId)};
        return db.getMap(sql, params);
    }

    // 添加书
    public int addBook() {
        int result = 0;
        String sql = "insert into DominicBookStore.books values(null,?,?,?,?)";
        String[] params = {bookName, bookISBN, bookAuthor, bookPrice};
        result = db.update(sql, params);
        return result;
    }

    public int updateBook() {
        String sql = "UPDATE DominicBookStore.books SET bookName = ?, bookISBN = ?, bookAuthor = ?, bookPrice = ? WHERE bookId = ?";
        String[] params = {bookName, bookISBN, bookAuthor, bookPrice, String.valueOf(bookId)};
        System.out.println(sql);
        System.out.println(Arrays.toString(params));
        return db.update(sql, params);
    }

    public int deleteBook() {
        String sql = "DELETE FROM DominicBookStore.books WHERE bookId = ?";
        String[] params = {String.valueOf(bookId)};
        return db.update(sql, params);
    }


}
