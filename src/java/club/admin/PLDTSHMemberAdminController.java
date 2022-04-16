/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.admin;

import club.business.Member;
import club.data.MemberDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Phillip
 */
@WebServlet("/PLDTSHMemberAdmin")
public class PLDTSHMemberAdminController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        ServletContext ctx = getServletContext();
//
//        String path = ctx.getRealPath("/WEB-INF/books.txt");
//        RequestDispatcher dispatcher = ctx.getRequestDispatcher("/PLDTSHDisplayMembers.jsp");
//        dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "";
        String action = request.getParameter("action");
        if (action == null) 
        {
            action = "displayMembers";
        }
        if (action == "displayMembers") 
        {
            url = "/PLDTSHDisplayMembers.jsp";
        } 
        else if (action.equals("addMember")) 
        {
            url = "/PLDTSHAddMember.jsp";
        } 
        else if (action.equals("editMember")) 
        {
            String email = request.getParameter("email");
            url = "/PLDTSHEditMember.jsp?email=" + email;

            Member member = MemberDB.selectMember(email);
            request.setAttribute("member", member);

        } 
        else if (action.equals("deleteMember")) 
        {
            String email = request.getParameter("email");
            String fullName = request.getParameter("fullName");
            String phoneNumber = request.getParameter("phoneNumber");
            String program = request.getParameter("program");
            String year = request.getParameter("year");

            Member member = MemberDB.selectMember(email);
            request.setAttribute("member", member);
            url = "/PLDTSHRemoveMember.jsp";
        }

//        processRequest(request, response);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String action = request.getParameter("action");
        String url = "";
        MemberDB memberDB = new MemberDB();
        if (action.equals("saveMember")) 
        {
            // get parameters                                                                                                                                                                                                                                                                                                     equest
            String fullName = request.getParameter("fullName");
            String email = request.getParameter("emailAddress");
            String phone = request.getParameter("phoneNumber");
            String program = request.getParameter("programName"); 
            int year = Integer.parseInt(request.getParameter("yearLevel"));

            // store data in User object
            Member member = new Member();

            member.setFullName(fullName);
            member.setEmailAddress(email);
            member.setPhoneNumber(phone);
            member.setProgramName(program);
            member.setYearLevel(year);

            // validate the parameters
            String message = null;
            int i = 0;
            if (fullName == null || email == null || phone == null || program == null
                    || fullName.isEmpty() || email.isEmpty() || phone.isEmpty() || program.isEmpty()) 
            {
                message = "Please fill out all three text boxes.";
                url = "/PLDTSHAddMember.jsp";
            }
            else 
            {
                if(MemberDB.emailExists(email))
                {
                    message = "Email exists - use a different one!";
                    url = "/PLDTSHAddMember.jsp";
                }
                else 
                {
                    i = MemberDB.insert(member);
                    url = "/PLDTSHDisplayMembers.jsp";
                }
            }

            request.setAttribute("member", member);
            request.setAttribute("message", message);
            request.setAttribute("records", i);
        }
        else if (action.equals("updateMember")) 
        {
            String fullName = request.getParameter("fullName");
            String email = request.getParameter("email");
            String phone = request.getParameter("phoneNumber");
            String program = request.getParameter("programName");
            int year = Integer.parseInt(request.getParameter("yearLevel"));

            System.out.println("Full name: " + fullName);
            System.out.println("Email: " + email);
            System.out.println("phone " + phone);
            System.out.println("program " + program);
            System.out.println("year: " + year);

            Member member = new Member();
            member.setFullName(fullName);
            member.setEmailAddress(email);
            member.setPhoneNumber(phone);
            member.setProgramName(program);
            member.setYearLevel(year);
            
            MemberDB.update(member);
            url = "/PLDTSHDisplayMembers.jsp";
        }
        else if (action.equals("deleteMember")) 
        { 
            String email = request.getParameter("emailAddress");
            Member memberToDelete = MemberDB.selectMember(email);
            MemberDB.delete(memberToDelete);
            url = "/PLDTSHDisplayMembers.jsp";
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
