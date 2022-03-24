/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package club.admin;

import club.business.Book;
import club.data.BookIO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * @author Devon, Phillip
 */
@WebServlet("/PLDTSHDisplayBooks")
public class PLDTSHDisplayBooksServlet extends HttpServlet
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        // To actually store the context, we must inherit from httpservlet
        ServletContext ctx = getServletContext();
        
        // Get REAL path of the book file 
        String path = ctx.getRealPath("/WEB-INF/books.txt");
        
        // Parse books from file
        ArrayList<Book> books = BookIO.getBooks(path);
        
        // Book is serializable, therefore we can store it as attribute
        request.setAttribute("books", books);
        
        // Set the dispatcher to forward the request and response back to the book dislay page
        RequestDispatcher dispatcher = ctx.getRequestDispatcher("/PLDTSHDisplayBooks.jsp");
        dispatcher.forward(request, response);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
