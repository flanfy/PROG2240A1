/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package club.business;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Phillip
 */
public class PLDTSHMemberTest {
    
    public PLDTSHMemberTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }

    @Test
    public void testGetFullName() {
            Member member = new Member();
            String expected = "John Smith";
            member.setFullName(expected);
            String actual = member.getFullName();
            assertEquals(expected, actual);
    }
    
    @Test
    public void TestGetEmailAddress() {
            Member member = new Member();
            String expected = "JS@gmail.com";
            member.setEmailAddress(expected);
            String actual = member.getEmailAddress();
            assertEquals(expected, actual);
    }

    @Test
        public void TestGetPhone() {
                Member member = new Member();
                String expected = "123-456-7890";
                member.setPhoneNumber(expected);
                String actual = member.getPhoneNumber();
                assertEquals(expected, actual);
        }

    @Test
        public void TestGetProgramName() {
                Member member = new Member();
                String expected = "CPA";
                member.setProgramName(expected);
                String actual = member.getProgramName();
                assertEquals(expected, actual);
        }

    @Test
        public void TestGetYearLevel() {
                Member member = new Member();
                int expected = 3;
                member.setYearLevel(expected);
                int actual = member.getYearLevel();
                assertEquals(expected, actual);
        }

        @Test
        public void TestValidPositive() {
                Member member = new Member();
                String email = "JS@gmail.ca";
                String fullname = "John Smith";
                member.setEmailAddress(email);
                member.setFullName(fullname);
                member.isValid();
                assertEquals(true, member.isValid());
        }

        @Test
        public void TestValidNegative() {
                Member member = new Member();
                member.isValid();
                assertEquals(false, member.isValid());
        }

    @AfterClass
    public static void tearDownClass() {
    }

}
