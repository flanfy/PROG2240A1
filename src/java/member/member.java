/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package member;

import java.io.Serializable;

/**
 *
 * @author Phillip
 */
public class member implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String phone; 
    private String program;
    private int year;

    public member() {
        firstName = "";
        lastName = "";
        email = "";
        phone = "";
        program = "";
        year = 0;

    }

public member(String firstName, String lastName, String email, String phone, String program, int year) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.program = program;
        this.year = year;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
