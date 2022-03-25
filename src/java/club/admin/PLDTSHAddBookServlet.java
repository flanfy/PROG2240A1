/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package club.admin;

import club.business.Book;
import club.data.BookIO;
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
        int bookQuantity = 0;
        String url = "/PLDTSHAddBook.jsp";
        Book newBook = new Book();
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        if (action.equals("Save")) {

            bookCode = request.getParameter("code");
            bookDescription = request.getParameter("description");
            quantityStr = request.getParameter("quantity");

            if (quantityStr == null || quantityStr.isEmpty()) {
                quantityStr = "0";
            }

            bookQuantity = Integer.parseInt(quantityStr);

            // store data in User object
            // validate the inputs
            String message = "";

            if (bookCode == null || bookCode == "")
            {
                message += "Book code is required. <br />";
            }
            if (bookDescription == null || bookDescription == "" || bookDescription.length() < 3)
            {
                message += "Description must have at least 3 characters. <br />";
            }
            if (bookQuantity <= 0)
            {
                message += "Quantity must be a positive integer. <br />";
            }
            if (message == "") 
            {
                newBook.setCode(bookCode);
                newBook.setDescription(bookDescription);
                newBook.setQuantity(bookQuantity);

                BookIO.insert(newBook, path);
                url = "/PLDTSHDisplayBooks";
            }
            else
            {
                request.setAttribute("message", message);
                url = "/PLDTSHAddBook.jsp";
            }
        }
        request.setAttribute("code", bookCode);
        request.setAttribute("description", bookDescription);       
        request.setAttribute("quantity", bookQuantity);     
        request.setAttribute("book", newBook);    
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request,response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        processRequest(request, response);
    }
}
