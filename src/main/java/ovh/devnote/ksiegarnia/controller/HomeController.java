package ovh.devnote.ksiegarnia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ovh.devnote.ksiegarnia.entity.Ksiazka;
import ovh.devnote.ksiegarnia.services.BookService;

import java.util.List;

@Controller
public class HomeController {

    private BookService bookService;

    @Autowired
    public HomeController(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexPage(ModelMap model){
        model.addAttribute("message","Access for everybody");
        return "index";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap model){
        List<Ksiazka> books = bookService.getBooks();
        model.addAttribute("books", books);
        model.addAttribute("message","Admin Page...");

        return "admin";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')")
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userPage(ModelMap model){
        List<Ksiazka> books = bookService.getBooks();
        model.addAttribute("books", books);
        model.addAttribute("message","User page...");
        return "user";
    }
}
