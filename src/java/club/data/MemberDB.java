package club.data;

import club.business.Member;
import club.data.DBUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MemberDB {

    public static int insert(Member member) {
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = null;

        String query
                = "INSERT INTO member (MemberID, FullName, EmailAddress, PhoneNumber, "
                + "ProgramName, YearLevel) "
                + "VALUES (NULL, ?, ?, ?, ?, ?)";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, member.getFullName());
            ps.setString(2, member.getEmailAddress());
            ps.setString(3, member.getPhoneNumber());
            ps.setString(4, member.getProgramName());
            ps.setInt(5, member.getYearLevel());
            return ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }
    }

    public static int update(Member member) {
        Connection con = DBUtil.getConnection();

        PreparedStatement ps = null;
        String query = "UPDATE member SET "
                + "FullName = ?, "
                + "PhoneNumber = ?, "
                + "ProgramName = ?, "
                + "YearLevel = ? "
                + "WHERE EmailAddress = ?";

        try {
            ps = con.prepareStatement(query);
            ps.setString(1, member.getFullName());
            ps.setString(2, member.getPhoneNumber());
            ps.setString(3, member.getProgramName());
            ps.setInt(4, member.getYearLevel());
            ps.setString(5, member.getEmailAddress());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
            return 0;
        }
    }

    public static int delete(Member member) {
        Connection con = DBUtil.getConnection();

        PreparedStatement ps = null;

        String query = "DELETE FROM member "
                + "WHERE EmailAddress = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, member.getEmailAddress());

            return ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }
    }

    public static boolean emailExists(String emailAddress) {
        Connection con = DBUtil.getConnection();

        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT EmailAddress FROM member "
                + "WHERE EmailAddress = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, emailAddress);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public static Member selectMember(String emailAddress) {
        Connection con = DBUtil.getConnection();

        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM Member "
                + "WHERE EmailAddress = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, emailAddress);
            rs = ps.executeQuery();
            Member member = null;
            if (rs.next()) {
                member = new Member();
                member.setFullName(rs.getString("FullName"));
                member.setEmailAddress(rs.getString("EmailAddress"));
                member.setPhoneNumber(rs.getString("PhoneNumber"));
                member.setProgramName(rs.getString("ProgramName"));
                member.setYearLevel(rs.getInt("YearLevel"));
            }
            return member;
        } catch (SQLException e) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, e);
            return null;
        }
    }

    public static ArrayList<Member> selectMembers() {
        Connection con = DBUtil.getConnection();

        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM Member";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            ArrayList<Member> members = new ArrayList<Member>();
            while (rs.next()) {
                Member member = new Member();
                member.setFullName(rs.getString("FullName"));
                member.setEmailAddress(rs.getString("EmailAddress"));
                member.setPhoneNumber(rs.getString("PhoneNumber"));
                member.setProgramName(rs.getString("ProgramName"));
                member.setYearLevel(rs.getInt("YearLevel"));
                members.add(member);
            }
            return members;
        } catch (SQLException e) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, e);
            return null;
        }
    }
}
