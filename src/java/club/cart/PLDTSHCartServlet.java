/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.cart;

import club.business.Book;
import club.business.ECart;
import club.business.ELoan;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Phillip, Devon
 */
public class PLDTSHCartServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        ServletContext context = this.getServletContext();
        ArrayList<Book> loanItems = (ArrayList<Book>) context.getAttribute("loanItems");
        
        HttpSession mySession = request.getSession();
        ECart myCart = (ECart) mySession.getAttribute("myCart");
        if (myCart == null)
        {
            myCart = new ECart();
        };
        String reserve = request.getParameter("action");
        String reserveCode = (String) request.getParameter("code");
        if (reserve != null && (reserveCode != "" && reserveCode != null)) 
        {
            Book tempBook = ELoan.findItem(loanItems, reserveCode);
            myCart.addItem(tempBook);
            ELoan.subtractFromQOH(loanItems, reserveCode, 1);
            mySession.setAttribute("myCart", myCart);
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/PLDTSHECart.jsp");
        dispatcher.forward(request, response);
    }

     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        processRequest(request, response);
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        processRequest(request, response);
    }
 
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }
}
