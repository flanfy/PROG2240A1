/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package club.admin;

import club.business.Book;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Phillip, Devon
 */
@WebServlet("/PLDTSHAddBook")
public class PLDTSHAddBookServlet extends HttpServlet
{
    // TODO: Finish implementation of adding book
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        ServletContext ctx = getServletContext();
        String path = ctx.getRealPath("/WEB-INF/books.txt");

        String bookCode = "";
        String bookDescription = "";
        String quantityStr = "";
        
        if (quantityStr == null || quantityStr.isEmpty()) 
        {
            quantityStr = "0";
        }

        int bookQuantity = Integer.parseInt(quantityStr);
        
        // store data in User object
        Book newBook = new Book(bookCode, bookDescription, bookQuantity);
        request.setAttribute("book", newBook);
        
        // validate the inputs
        String message = "";
        String url = "";

        if (bookCode == null || bookCode == "")
        {
            message += "Error Message. <br />";
        }
        if (bookDescription == null || bookDescription == "" || bookDescription.length() < 3)
        {
            message += "Error Message. <br />";
        }
        if (bookQuantity <= 0)
        {
            message += "Error Message. <br />";
        }
        if (message == "") 
        {
            // Call the insert() method of BookIO class.
            url = "/XXYYDisplayBooks";
        }
        else
        {
            request.setAttribute("message", message);
            url = "/XXYYAddBook.jsp";
        }
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        processRequest(request, response);
    }
}
