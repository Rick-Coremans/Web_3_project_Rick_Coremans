package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import domain.model.Person;

import java.util.List;

public class Overview extends RequestHandler {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        List<Person> personList = service.getAll();
        request.setAttribute("persons", personList);
        return "personoverview.jsp";
    }
}
