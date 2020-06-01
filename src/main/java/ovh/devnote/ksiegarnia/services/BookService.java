package ovh.devnote.ksiegarnia.services;

import ovh.devnote.ksiegarnia.entity.Ksiazka;

import java.util.List;


public interface BookService {
    public List<Ksiazka> getBooks();

    public void saveBook(Ksiazka ksiazka);

    public Ksiazka getBook(int bookid);

    public void deleteBook(int bookId);
}
