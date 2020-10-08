package controller;
import domain.model.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class CreateAccount extends RequestHandler {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

        Person person = new Person();
        List<String> result = new ArrayList<>();

        setUserid(result, person, request);
        setFirstName(result, person, request);
        setLastName(result, person, request);
        setEmail(result, person, request);
        setPassword(result, person, request);

        if (result.size() > 0) {
            request.setAttribute("error", result);
            return "register.jsp";
        } else {
            service.add(person);
           // return "register.jsp";
            return "Controller?command=Overview";
        }
    }

    private void setUserid (List<String> result, Person person, HttpServletRequest request) {
        String userid = request.getParameter("userid");
        try {
            person.setUserid(userid);
            request.setAttribute("previousUserid", userid);
        }
        catch(Exception e) {
            result.add(e.getMessage());
        }
    }

    private void setFirstName (List<String> result, Person person, HttpServletRequest request) {
        String firstName = request.getParameter("firstName");
        try {
            person.setFirstName(firstName);
            request.setAttribute("previousFirstName", firstName);
        }
        catch(Exception e) {
            result.add(e.getMessage());
        }
    }

    private void setLastName (List<String> result, Person person, HttpServletRequest request) {
        String lastName = request.getParameter("lastName");
        try {
            person.setLastName(lastName);
            request.setAttribute("previousLastName", lastName);
        }
        catch(Exception e) {
            result.add(e.getMessage());
        }
    }

    private void setEmail (List<String> result, Person person, HttpServletRequest request) {
        String email = request.getParameter("email");
        try {
            person.setEmail(email);
            request.setAttribute("previousEmail", email);
        }
        catch(Exception e) {
            result.add(e.getMessage());
        }
    }

    private void setPassword (List<String> result, Person person, HttpServletRequest request) {
        String password = request.getParameter("password");
        try {
            person.setPassword(password);
            request.setAttribute("previousPassword", password);
        }
        catch(Exception e) {
            result.add(e.getMessage());
        }
    }
}

