package ovh.devnote.ksiegarnia.dao;

import ovh.devnote.ksiegarnia.entity.Ksiazka;

import java.util.List;

public interface BookDAO {
    public List<Ksiazka> getBooks();

    public void saveBook(Ksiazka ksiazka);

    public Ksiazka getBook(int bookid);

    public void deleteBook(int bookId);

//    public void getBook(Ksiazka ksiazka);
}
