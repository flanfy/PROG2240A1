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
        if (action == null) {
            action = "displayMembers";
        }
        if (action == "displayMembers") {
            url = "/PLDTSHDisplayMembers.jsp";
        } else if (action.equals("addMember")) {
            url = "/PLDTSHAddMember.jsp";
        } else if (action.equals("editMember")) {

            String email = request.getParameter("email");
            url = "/PLDTSHEditMember.jsp?email=email";
        } else if (action.equals("removeMember")) {
            String email = request.getParameter("email");
            url = "/PLDTSHEditMember.jsp?email=email";
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
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "";
        MemberDB memberDB = new MemberDB();
        if (action.equals("saveMember")) {
            // get parameters from the request
            String fullName = request.getParameter("fullName");
            String email = request.getParameter("emailAddress");
            String phone = request.getParameter("phoneNumber");
            String program = request.getParameter("programName");
            int year = Integer.parseInt(request.getParameter("yearLevel"));

            // store data in User object
            Member member = new Member();
//            MemberDB memberDB = new MemberDB();

            member.setFullName(fullName);
            member.setEmailAddress(email);
            member.setPhoneNumber(phone);
            member.setProgramName(program);
            member.setYearLevel(year);

            // validate the parameters
            String message;
            int i = 0;
            if (fullName == null || email == null || phone == null || program == null
                    || fullName.isEmpty() || email.isEmpty() || phone.isEmpty() || program.isEmpty()) {
                message = "Please fill out all three text boxes.";
                url = "/PLDTSHAddMember.jsp";
            } else {
                message = "";
                url = "/PLDTSHDisplayMembers.jsp";
                i = memberDB.insert(member);

            }
            request.setAttribute("member", member);
            request.setAttribute("message", message);
            request.setAttribute("records", i);
        } else if (action.equals("updateMember")) {

        } else if (action.equals("deleteMember")) {
            int i = 0;
//            i = memberDB.delete(member);
            request.setAttribute("records", i);
        }

//        processRequest(request, response);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
